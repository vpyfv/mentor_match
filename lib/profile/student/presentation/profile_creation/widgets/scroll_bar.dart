import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mentor_match/profile/student/bloc/student_profile_create_bloc.dart';

part 'scroll_bar.freezed.dart';

@freezed
class ScrollBar with _$ScrollBar {
  const factory ScrollBar({
    required int pageNum,
    required bool isValid,
  }) = _ScrollBar;
}

class ScrollBarWidget extends StatelessWidget {
  final List<ScrollBar> scrollBars;

  const ScrollBarWidget({super.key, required this.scrollBars});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...scrollBars.map((s) => _ProgressCircleIcon(
                  pageNum: s.pageNum,
                  isValid: s.isValid,
                  numOfScrollBars: scrollBars.length,
                ))
          ],
        ),
      ),
    );
  }
}

class _ProgressCircleIcon extends StatelessWidget {
  final int pageNum;
  final bool isValid;
  final int numOfScrollBars;
  const _ProgressCircleIcon({required this.pageNum, required this.isValid, required this.numOfScrollBars});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentProfileCreateBloc, StudentProfileCreateState>(
      builder: (context, state) {
        return Column(
          children: [
            Icon(
              state.pageNum >= pageNum ? Icons.circle_rounded : Icons.circle_outlined,
              color: state.showError && !isValid
                  ? Colors.red
                  : state.pageNum == pageNum
                      ? Colors.black
                      : Colors.black.withOpacity(0.2),
              size: state.pageNum == pageNum ? 18 : 10,
            ),
            if (pageNum < numOfScrollBars) ..._separator(),
          ],
        );
      },
    );
  }

  List<Widget> _separator() {
    return [
      ...List<int>.generate(3, (i) => i + 1).map((e) => Text(
            ".",
            style: TextStyle(color: Colors.black.withOpacity(0.5)),
          )),
      const Text("", style: TextStyle(fontSize: 6))
    ];
  }
}
