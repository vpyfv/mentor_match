import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentor_match/profile/student/bloc/student_profile_create_bloc.dart';

class NameForm extends StatelessWidget {
  const NameForm({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<StudentProfileCreateBloc>().state;
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox.square(dimension: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Enter your name", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600))],
                    ),
                    const Text("First Name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                    const SizedBox.square(dimension: 10),
                    TextFormField(
                      decoration: const InputDecoration(label: Text("First Name")),
                      validator: (value) => state.firstName.isEmpty ? "should not be empty" : null,
                      onChanged: (value) => context
                          .read<StudentProfileCreateBloc>()
                          .add(StudentProfileCreateEvent.firstNameChanged(value)),
                    ),
                    const SizedBox.square(dimension: 20),
                    const Text("Last Name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                    const SizedBox.square(dimension: 10),
                    TextFormField(
                      decoration: const InputDecoration(label: Text("Last Name")),
                      validator: (value) => state.lastName.isEmpty ? "should not be empty" : null,
                      onChanged: (value) => context
                          .read<StudentProfileCreateBloc>()
                          .add(StudentProfileCreateEvent.lastNameChanged(value)),
                    ),
                  ],
                ),
                const SizedBox.square(dimension: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
