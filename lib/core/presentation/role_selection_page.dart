import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RoleSelectionPage extends StatelessWidget {
  const RoleSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Are you a ?",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
            const SizedBox.square(dimension: 60),
            FilledButton.tonal(
              onPressed: () => context.push('/profile/student'),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Student",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 85),
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
            FilledButton.tonal(
                onPressed: () => context.push('/profile/mentor'),
                child: const Text(
                  "Mentor",
                  style: TextStyle(fontSize: 18),
                )),
          ],
        ),
      ),
    );
  }
}
