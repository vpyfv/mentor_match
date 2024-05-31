import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentor_match/auth/bloc/auth_bloc.dart';

class AuthPage extends HookWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userName = useState<String>('');
    final password = useState<String>('');
    final isSubmitted = useState<bool>(false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authentication'),
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(orElse: () {}, signedIn: (_) => context.pushReplacement('/role'));
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 100),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        ' Mentor Match',
                        textStyle: GoogleFonts.orbitron(fontSize: 36, fontWeight: FontWeight.w500, color: Colors.black),
                        textAlign: TextAlign.center,
                        speed: const Duration(milliseconds: 200),
                      ),
                    ],
                    totalRepeatCount: 1,
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton.icon(
                    onPressed: () => {},
                    label: const Text("SSO Login"),
                    icon: const Icon(Icons.key),
                  ),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Row(
                      children: [
                        Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("OR"),
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),
                  ),
                  Form(
                    autovalidateMode: isSubmitted.value ? AutovalidateMode.always : AutovalidateMode.disabled,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("PawPrint:", style: TextStyle(fontWeight: FontWeight.w600)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: const InputDecoration(labelText: "Enter PawPrint "),
                            validator: (value) => userName.value.isEmpty ? "user name should not be empty" : null,
                            onChanged: (value) => userName.value = value,
                          ),
                        ),
                        const SizedBox.square(dimension: 20),
                        const Text(
                          "Password:",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: const InputDecoration(labelText: "Enter Password "),
                            validator: (value) => password.value.isEmpty ? "password should not be empty" : null,
                            onChanged: (value) => password.value = value,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox.square(dimension: 20),
                  ElevatedButton(
                    child: const Text("Submit"),
                    onPressed: () {
                      isSubmitted.value = true;
                      context.read<AuthBloc>().add(AuthEvent.signIn(userName.value, password.value));
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
