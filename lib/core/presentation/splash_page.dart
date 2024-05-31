import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mentor_match/auth/bloc/auth_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () => {},
              signedIn: (_) => context.pushReplacement('/role'),
              signInFailed: (_) => context.pushReplacement('/auth'),
            );
          },
          child: const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
