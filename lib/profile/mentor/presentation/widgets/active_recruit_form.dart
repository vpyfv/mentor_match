import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentor_match/profile/mentor/bloc/mentor_profile_create_bloc.dart';
import 'package:path/path.dart';

class ActiveRecruitForm extends StatelessWidget {
  const ActiveRecruitForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                const Column(
                  children: [
                    Text("Are you Actively Recruiting ?",
                        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500), textAlign: TextAlign.center),
                    SizedBox.square(dimension: 20),
                    _RecruitOptions(),
                    _CVForm(),
                    SizedBox.square(dimension: 20),
                  ],
                ),
                const _CreateButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RecruitOptions extends StatelessWidget {
  const _RecruitOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentorProfileCreateBloc, MentorProfileCreateState>(
      builder: (context, state) {
        return Row(
          children: [
            Flexible(
                child: RadioListTile(
              value: "No",
              groupValue: state.isActivelyRecruiting ? "Yes" : "No",
              onChanged: (value) => context
                  .read<MentorProfileCreateBloc>()
                  .add(const MentorProfileCreateEvent.isActivelyRecruitingChanged(false)),
              title: const Text("No"),
            )),
            Flexible(
                child: RadioListTile(
              value: "Yes",
              groupValue: state.isActivelyRecruiting ? "Yes" : "No",
              onChanged: (value) => context
                  .read<MentorProfileCreateBloc>()
                  .add(const MentorProfileCreateEvent.isActivelyRecruitingChanged(true)),
              title: const Text("Yes"),
            )),
          ],
        );
      },
    );
  }
}

class _CVForm extends StatelessWidget {
  const _CVForm();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentorProfileCreateBloc, MentorProfileCreateState>(
      builder: (context, state) {
        if (state.isActivelyRecruiting) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Divider(),
              ),
              const SizedBox.square(dimension: 30),
              const Text("Upload CV", style: TextStyle(fontWeight: FontWeight.w500)),
              const SizedBox.square(dimension: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    style: const ButtonStyle(
                      elevation: WidgetStatePropertyAll(0.1),
                      padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 40, horizontal: 60)),
                      shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12)))),
                    ),
                    label: Text(
                      state.cvFile != null ? basename(state.cvFile!.path) : "upload file",
                      style: TextStyle(color: state.showError && state.cvFile == null ? Colors.red : null),
                    ),
                    onPressed: () =>
                        context.read<MentorProfileCreateBloc>().add(const MentorProfileCreateEvent.cvFileChanged()),
                    icon: Icon(
                      state.cvFile != null ? Icons.file_present_rounded : Icons.upload_rounded,
                      color: state.showError && state.cvFile == null ? Colors.red : null,
                    ),
                  ),
                ],
              ),
              const SizedBox.square(dimension: 30),
              const Text("URL", style: TextStyle(fontWeight: FontWeight.w500)),
              const SizedBox.square(dimension: 20),
              TextFormField(
                decoration: const InputDecoration(label: Text("paste url")),
                validator: (value) => state.url.isEmpty ? "should not be empty" : null,
                onChanged: (value) =>
                    context.read<MentorProfileCreateBloc>().add(MentorProfileCreateEvent.urlChanged(value)),
              ),
            ],
          );
        }
        return Container();
      },
    );
  }
}

class _CreateButton extends StatelessWidget {
  const _CreateButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentorProfileCreateBloc, MentorProfileCreateState>(
      builder: (context, state) {
        return ElevatedButton.icon(
          label: const Text("Create"),
          onPressed: () =>
              context.read<MentorProfileCreateBloc>().add(const MentorProfileCreateEvent.createButtonClicked()),
        );
      },
    );
  }
}
