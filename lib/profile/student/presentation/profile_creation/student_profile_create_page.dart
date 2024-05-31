import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:mentor_match/core/dependency_injection/injectable.dart';
import 'package:mentor_match/profile/student/bloc/student_profile_create_bloc.dart';
import 'package:mentor_match/profile/student/presentation/profile_creation/widgets/academic_status_form.dart';
import 'package:mentor_match/profile/student/presentation/profile_creation/widgets/cv_form.dart';
import 'package:mentor_match/profile/student/presentation/profile_creation/widgets/name_form.dart';
import 'package:mentor_match/profile/student/presentation/profile_creation/widgets/page_view.dart';
import 'package:mentor_match/profile/student/presentation/profile_creation/widgets/research_form.dart';

import 'widgets/scroll_bar.dart';

class StudentProfileCreatePage extends StatelessWidget {
  const StudentProfileCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Profile"),
      ),
      body: BlocProvider(
        create: (context) => getIt<StudentProfileCreateBloc>(),
        child: BlocListener<StudentProfileCreateBloc, StudentProfileCreateState>(
          listener: (context, state) {
            state.isCreatedSuccessfully ? context.pushReplacement('/home/student') : null;
          },
          child: BlocBuilder<StudentProfileCreateBloc, StudentProfileCreateState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: _Form(state: state),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _Form extends StatelessWidget {
  final StudentProfileCreateState state;
  const _Form({required this.state});
  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> getPages() {
      return [
        {
          "page": const NameForm(),
          "scrollBar": ScrollBar(pageNum: 1, isValid: state.firstName.isNotEmpty && state.lastName.isNotEmpty)
        },
        {
          "page": const AcademicStatusForm(),
          "scrollBar": const ScrollBar(pageNum: 2, isValid: true),
        },
        {
          "page": const ResearchForm(),
          "scrollBar": ScrollBar(
              pageNum: 3,
              isValid: state.researchExperience ? state.yearsOfExperience > 0 && state.researchLink.isNotEmpty : true),
        },
        {
          "page": const CvForm(),
          "scrollBar": ScrollBar(pageNum: 4, isValid: state.lookingFor.isNotEmpty && state.file != null)
        },
      ];
    }

    final scrollBars = getPages().map((e) => e["scrollBar"] as ScrollBar).toList();
    final pages = getPages().map((e) => e["page"] as Widget).toList();

    return Form(
        autovalidateMode: state.showError ? AutovalidateMode.always : AutovalidateMode.disabled,
        child: Row(
          children: [
            ScrollBarWidget(scrollBars: scrollBars),
            Expanded(child: CustomPageView(pages: pages)),
          ],
        ));
  }
}
