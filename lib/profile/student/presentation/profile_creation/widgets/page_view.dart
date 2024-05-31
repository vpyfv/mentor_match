import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentor_match/profile/student/bloc/student_profile_create_bloc.dart';

class CustomPageView extends StatelessWidget {
  final List<Widget> pages;
  const CustomPageView({super.key, required this.pages});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentProfileCreateBloc, StudentProfileCreateState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showError ? AutovalidateMode.always : AutovalidateMode.disabled,
          child: PageView(
            scrollDirection: Axis.vertical,
            onPageChanged: (value) => context
                .read<StudentProfileCreateBloc>()
                .add(StudentProfileCreateEvent.editPageNumberChanged(value + 1)),
            children: pages,
          ),
        );
      },
    );
  }
}
