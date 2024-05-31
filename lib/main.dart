import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentor_match/auth/bloc/auth_bloc.dart';
import 'package:mentor_match/core/dependency_injection/injectable.dart';
import 'package:mentor_match/core/route/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => getIt<AuthBloc>()..add(const AuthEvent.checkSignInStatus()),
        )
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
          useMaterial3: true,
          inputDecorationTheme:
              InputDecorationTheme(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
        routerConfig: router,
      ),
    );
  }
}
