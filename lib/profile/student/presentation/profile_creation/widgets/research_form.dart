import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentor_match/profile/student/bloc/student_profile_create_bloc.dart';

class ResearchForm extends StatelessWidget {
  const ResearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: BlocBuilder<StudentProfileCreateBloc, StudentProfileCreateState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: state.researchExperience ? MainAxisAlignment.start : MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Do you have research experience ?",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600), textAlign: TextAlign.center),
                  const SizedBox.square(dimension: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: RadioListTile(
                          value: "No",
                          groupValue: state.researchExperience ? "Yes" : "No",
                          onChanged: (value) => context
                              .read<StudentProfileCreateBloc>()
                              .add(const StudentProfileCreateEvent.researchExperienceChanged(false)),
                          title: const Text("No"),
                        ),
                      ),
                      Flexible(
                        child: RadioListTile(
                          value: "Yes",
                          groupValue: state.researchExperience ? "Yes" : "No",
                          onChanged: (value) => context
                              .read<StudentProfileCreateBloc>()
                              .add(const StudentProfileCreateEvent.researchExperienceChanged(true)),
                          title: const Text("Yes"),
                        ),
                      ),
                    ],
                  ),
                  if (state.researchExperience) ...[
                    const Divider(),
                    const SizedBox.square(dimension: 50),
                    const Text("Years of experience", style: TextStyle(fontWeight: FontWeight.w600)),
                    const SizedBox.square(dimension: 10),
                    TextFormField(
                      decoration: const InputDecoration(label: Text("input no of years")),
                      keyboardType: TextInputType.number,
                      validator: (value) =>
                          state.researchExperience && (state.showError && state.yearsOfExperience <= 0)
                              ? "invalid number"
                              : null,
                      onChanged: (value) => context
                          .read<StudentProfileCreateBloc>()
                          .add(StudentProfileCreateEvent.yearsOfExperienceChanged(value)),
                    ),
                    const SizedBox.square(dimension: 20),
                    const Text("Research Link", style: TextStyle(fontWeight: FontWeight.w600)),
                    const SizedBox.square(dimension: 10),
                    TextFormField(
                      decoration: const InputDecoration(label: Text("e.g. Google Scholar ORCID")),
                      validator: (value) => state.researchExperience && (state.showError && state.researchLink.isEmpty)
                          ? "should not be empty"
                          : null,
                      onChanged: (value) => context
                          .read<StudentProfileCreateBloc>()
                          .add(StudentProfileCreateEvent.researchLinkChanged(value)),
                    ),
                  ] else
                    Container(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
