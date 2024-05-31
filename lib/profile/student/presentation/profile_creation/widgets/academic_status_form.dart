import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentor_match/profile/student/bloc/student_profile_create_bloc.dart';
import 'package:mentor_match/profile/student/domain/enums.dart';

class AcademicStatusForm extends StatelessWidget {
  const AcademicStatusForm({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Select your Academic Status",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600), textAlign: TextAlign.center),
                BlocBuilder<StudentProfileCreateBloc, StudentProfileCreateState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        RadioListTile<Academics>(
                          value: Academics.underGraduate,
                          groupValue: state.academics,
                          onChanged: (_) => context
                              .read<StudentProfileCreateBloc>()
                              .add(const StudentProfileCreateEvent.academicsChanged(Academics.underGraduate)),
                          title: Text(Academics.underGraduate.name),
                        ),
                        RadioListTile<Academics>(
                          value: Academics.master,
                          groupValue: state.academics,
                          onChanged: (_) => context
                              .read<StudentProfileCreateBloc>()
                              .add(const StudentProfileCreateEvent.academicsChanged(Academics.master)),
                          title: Text(Academics.master.name),
                        ),
                        RadioListTile<Academics>(
                          value: Academics.phd,
                          groupValue: state.academics,
                          onChanged: (_) => context
                              .read<StudentProfileCreateBloc>()
                              .add(const StudentProfileCreateEvent.academicsChanged(Academics.phd)),
                          title: Text(Academics.phd.name),
                        ),
                        RadioListTile<Academics>(
                          value: Academics.professional,
                          groupValue: state.academics,
                          onChanged: (_) => context
                              .read<StudentProfileCreateBloc>()
                              .add(const StudentProfileCreateEvent.academicsChanged(Academics.professional)),
                          title: Text(Academics.professional.name),
                        )
                      ],
                    );
                  },
                ),
                const SizedBox.square(dimension: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
