import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mentor_match/profile/student/bloc/student_profile_create_bloc.dart';
import 'package:mentor_match/profile/student/domain/enums.dart';
import 'package:path/path.dart';

class CvForm extends StatelessWidget {
  const CvForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("looking for ?", style: TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox.square(dimension: 15),
              const _LookingForField(),
              const SizedBox.square(dimension: 40),
              const _UploadCVField(),
              const SizedBox.square(dimension: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      child: const Text("Submit"),
                      onPressed: () =>
                          context.read<StudentProfileCreateBloc>().add(const StudentProfileCreateEvent.onSubmit())),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LookingForField extends HookWidget {
  const _LookingForField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentProfileCreateBloc, StudentProfileCreateState>(
      builder: (context, state) => Wrap(
        spacing: 10,
        children: LookingFor.values
            .map(
              (e) => FilterChip.elevated(
                  label: Text(
                    e.name,
                    style: TextStyle(color: state.showError && state.lookingFor.isEmpty ? Colors.red : null),
                  ),
                  selected: state.lookingFor.contains(e),
                  onSelected: (value) => {
                        context
                            .read<StudentProfileCreateBloc>()
                            .add(StudentProfileCreateEvent.lookingForChanged(e, value)),
                      }),
            )
            .toList(),
      ),
    );
  }
}

class _UploadCVField extends StatelessWidget {
  const _UploadCVField();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Upload your Resume / CV",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox.square(dimension: 15),
        BlocBuilder<StudentProfileCreateBloc, StudentProfileCreateState>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  style: const ButtonStyle(
                    elevation: WidgetStatePropertyAll(0.1),
                    padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 70, horizontal: 60)),
                    shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12)))),
                  ),
                  label: Text(
                    state.file != null ? basename(state.file!.path) : "upload file",
                    style: TextStyle(color: state.showError && state.file == null ? Colors.red : null),
                  ),
                  onPressed: () =>
                      context.read<StudentProfileCreateBloc>().add(const StudentProfileCreateEvent.fileChanged()),
                  icon: Icon(
                    state.file != null ? Icons.file_present_rounded : Icons.upload_rounded,
                    color: state.showError && state.file == null ? Colors.red : null,
                  ),
                ),
              ],
            );
          },
        )
      ],
    );
  }
}
