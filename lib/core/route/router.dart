import 'package:go_router/go_router.dart';
import 'package:mentor_match/auth/presentation/auth_page.dart';
import 'package:mentor_match/core/presentation/role_selection_page.dart';
import 'package:mentor_match/core/presentation/splash_page.dart';
import 'package:mentor_match/home/mentor/presentation/mentor_home_page.dart';
import 'package:mentor_match/home/student/presentation/student_home_page.dart';
import 'package:mentor_match/profile/mentor/presentation/mentor_profile_create_page.dart';
import 'package:mentor_match/profile/student/presentation/profile_creation/student_profile_create_page.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/auth',
    builder: (context, state) => const AuthPage(),
  ),
  GoRoute(
    path: '/role',
    builder: (context, state) => const RoleSelectionPage(),
  ),
  GoRoute(
    path: '/profile/student',
    builder: (context, state) => const StudentProfileCreatePage(),
  ),
  GoRoute(
    path: '/profile/mentor',
    builder: (context, state) => const MentorProfileCreatePage(),
  ),
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashPage(),
  ),
  GoRoute(
    path: '/home/mentor',
    builder: (context, state) => const MentorHomePage(),
  ),
  GoRoute(
    path: '/home/student',
    builder: (context, state) => const StudentHomePage(),
  ),
]);
