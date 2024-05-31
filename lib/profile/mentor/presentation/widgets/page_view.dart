import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentor_match/profile/mentor/bloc/mentor_profile_create_bloc.dart';

class CustomPageView extends StatelessWidget {
  final List<Widget> pages;
  const CustomPageView({super.key, required this.pages});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MentorProfileCreateBloc, MentorProfileCreateState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showError ? AutovalidateMode.always : AutovalidateMode.disabled,
          child: PageView(
            scrollDirection: Axis.vertical,
            onPageChanged: (value) =>
                context.read<MentorProfileCreateBloc>().add(MentorProfileCreateEvent.pageNumChanged(value + 1)),
            children: pages,
          ),
        );
      },
    );
  }
}
