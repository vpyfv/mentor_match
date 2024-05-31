import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentor_match/profile/mentor/bloc/mentor_profile_create_bloc.dart';
import 'package:mentor_match/profile/mentor/domain/enums.dart';
import 'package:path/path.dart';

class AcademicRoleForm extends StatelessWidget {
  const AcademicRoleForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Academic Role",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
          ),
          SizedBox.square(dimension: 20),
          _Appointment(),
          SizedBox.square(dimension: 50),
          Text(
            "Upload your BioSketch",
            style: TextStyle(fontWeight: FontWeight.w600),
            textAlign: TextAlign.start,
          ),
          SizedBox.square(dimension: 15),
          _BioSketch()
        ],
      ),
    );
  }
}

class _BioSketch extends StatelessWidget {
  const _BioSketch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentorProfileCreateBloc, MentorProfileCreateState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              style: const ButtonStyle(
                elevation: WidgetStatePropertyAll(0.1),
                padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 40, horizontal: 60)),
                shape:
                    WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12)))),
              ),
              label: Text(
                state.bioSketchFile != null ? basename(state.bioSketchFile!.path) : "upload file",
                style: TextStyle(color: state.showError && state.bioSketchFile == null ? Colors.red : null),
              ),
              onPressed: () =>
                  context.read<MentorProfileCreateBloc>().add(const MentorProfileCreateEvent.bioSketchFileChanged()),
              icon: Icon(
                state.bioSketchFile != null ? Icons.file_present_rounded : Icons.upload_rounded,
                color: state.showError && state.bioSketchFile == null ? Colors.red : null,
              ),
            ),
          ],
        );
      },
    );
  }
}

class _Appointment extends StatelessWidget {
  const _Appointment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentorProfileCreateBloc, MentorProfileCreateState>(
      builder: (context, state) {
        return Column(
          children: [
            RadioListTile<MentorRole>(
              value: MentorRole.juniorFaculty,
              groupValue: state.mentorRole,
              onChanged: (value) => context
                  .read<MentorProfileCreateBloc>()
                  .add(const MentorProfileCreateEvent.mentorRoleChanged(MentorRole.juniorFaculty)),
              title: Text(MentorRole.juniorFaculty.value),
            ),
            RadioListTile<MentorRole>(
              value: MentorRole.seniorFaculty,
              groupValue: state.mentorRole,
              onChanged: (value) => context
                  .read<MentorProfileCreateBloc>()
                  .add(const MentorProfileCreateEvent.mentorRoleChanged(MentorRole.seniorFaculty)),
              title: Text(MentorRole.seniorFaculty.value),
            ),
            RadioListTile<MentorRole>(
              value: MentorRole.other,
              groupValue: state.mentorRole,
              onChanged: (value) => context
                  .read<MentorProfileCreateBloc>()
                  .add(const MentorProfileCreateEvent.mentorRoleChanged(MentorRole.other)),
              title: Text(MentorRole.other.value),
            ),
          ],
        );
      },
    );
  }
}
