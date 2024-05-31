import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentor_match/profile/mentor/bloc/mentor_profile_create_bloc.dart';
import 'package:mentor_match/profile/student/domain/enums.dart';

class RecruitForm extends StatelessWidget {
  const RecruitForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: BlocBuilder<MentorProfileCreateBloc, MentorProfileCreateState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Looking to Recruit", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500)),
              const SizedBox.square(dimension: 50),
              ...Academics.values.map(
                (a) => SwitchListTile(
                  value: state.academics.contains(a),
                  onChanged: (value) =>
                      context.read<MentorProfileCreateBloc>().add(MentorProfileCreateEvent.academicsChanged(a, value)),
                  title: Text(a.name),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
