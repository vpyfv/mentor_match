import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentor_match/profile/mentor/bloc/mentor_profile_create_bloc.dart';

class NameForm extends StatelessWidget {
  const NameForm({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<MentorProfileCreateBloc>().state;
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Enter your name", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600))],
              ),
              const SizedBox.square(dimension: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("First Name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  const SizedBox.square(dimension: 10),
                  TextFormField(
                    decoration: const InputDecoration(label: Text("First Name")),
                    validator: (value) => state.firstName.isEmpty ? "should not be empty" : null,
                    onChanged: (value) =>
                        context.read<MentorProfileCreateBloc>().add(MentorProfileCreateEvent.firstNameChanged(value)),
                  ),
                  const SizedBox.square(dimension: 15),
                  const Text("Last Name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  const SizedBox.square(dimension: 10),
                  TextFormField(
                    decoration: const InputDecoration(label: Text("Last Name")),
                    validator: (value) => state.lastName.isEmpty ? "should not be empty" : null,
                    onChanged: (value) =>
                        context.read<MentorProfileCreateBloc>().add(MentorProfileCreateEvent.lastNameChanged(value)),
                  ),
                  const SizedBox.square(dimension: 15),
                  const Text("Title", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  const SizedBox.square(dimension: 10),
                  TextFormField(
                    decoration: const InputDecoration(label: Text("title")),
                    validator: (value) => state.lastName.isEmpty ? "should not be empty" : null,
                    onChanged: (value) =>
                        context.read<MentorProfileCreateBloc>().add(MentorProfileCreateEvent.titleChanged(value)),
                  ),
                ],
              ),
              const SizedBox.square(dimension: 50),
            ],
          ),
        ),
      ),
    );
  }
}
