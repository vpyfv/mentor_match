import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mentor_match/auth/bloc/auth_bloc.dart';

class StudentHomePage extends StatelessWidget {
  const StudentHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(orElse: () {}, signedOut: (_) => context.pushReplacement('/auth'));
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Student Page"),
          actions: [
            IconButton.filledTonal(
              onPressed: () => context.read<AuthBloc>().add(const AuthEvent.signOut()),
              icon: const Icon(Icons.logout_rounded),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: const [
              Card(
                child: ListTile(
                  title: Text("Interest 1"),
                  subtitle: Text("2 matching interests"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
