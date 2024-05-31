import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mentor_match/core/dependency_injection/injectable.dart';
import 'package:mentor_match/profile/mentor/bloc/mentor_profile_create_bloc.dart';
import 'package:mentor_match/profile/mentor/presentation/widgets/academic_role_form.dart';
import 'package:mentor_match/profile/mentor/presentation/widgets/active_recruit_form.dart';
import 'package:mentor_match/profile/mentor/presentation/widgets/recruit_form.dart';

import 'widgets/name_form.dart';
import 'widgets/page_view.dart';
import 'widgets/scroll_bar.dart';

class MentorProfileCreatePage extends StatelessWidget {
  const MentorProfileCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Profile"),
      ),
      body: BlocProvider(
        create: (context) => getIt<MentorProfileCreateBloc>(),
        child: BlocListener<MentorProfileCreateBloc, MentorProfileCreateState>(
          listener: (context, state) {
            state.isCreatedSuccessful ? context.pushReplacement('/home/mentor') : null;
          },
          child: GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: const _Form(),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatelessWidget {
  const _Form();
  @override
  Widget build(BuildContext context) {
    final state = context.watch<MentorProfileCreateBloc>().state;

    List<Map<String, Object>> getPages() {
      return [
        {
          "page": const NameForm(),
          "scrollBar": ScrollBar(
              pageNum: 1, isValid: state.firstName.isNotEmpty && state.lastName.isNotEmpty && state.title.isNotEmpty),
        },
        {
          "page": const AcademicRoleForm(),
          "scrollBar": ScrollBar(pageNum: 2, isValid: state.bioSketchFile != null),
        },
        {
          "page": const RecruitForm(),
          "scrollBar": ScrollBar(pageNum: 3, isValid: state.isActivelyRecruiting ? state.academics.isNotEmpty : true),
        },
        {
          "page": const ActiveRecruitForm(),
          "scrollBar": ScrollBar(
              pageNum: 4, isValid: state.isActivelyRecruiting ? state.cvFile != null && state.url.isNotEmpty : true),
        }
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
