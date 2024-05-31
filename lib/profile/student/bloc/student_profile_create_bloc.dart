import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mentor_match/core/file_picker/file_picker_service.dart';
import 'package:mentor_match/profile/student/domain/enums.dart';

part 'student_profile_create_event.dart';
part 'student_profile_create_state.dart';
part 'student_profile_create_bloc.freezed.dart';

@Injectable()
class StudentProfileCreateBloc extends Bloc<StudentProfileCreateEvent, StudentProfileCreateState> {
  final FilePickerService _filePickerService;

  StudentProfileCreateBloc(this._filePickerService) : super(StudentProfileCreateState.initial()) {
    on<StudentProfileCreateEvent>((event, emit) async {
      switch (event) {
        case EditPageNumberChanged(:final pageNum):
          emit(state.copyWith(pageNum: pageNum));
        case FirstNameChanged(:final name):
          emit(state.copyWith(firstName: name));
        case LastNameChanged(:final name):
          emit(state.copyWith(lastName: name));
        case AcademicsChanged(:final academics):
          emit(state.copyWith(academics: academics));
        case YearsOfExperienceChanged(:final yearsOfExperience):
          emit(state.copyWith(yearsOfExperience: int.tryParse(yearsOfExperience) ?? 0));
        case ResearchLinkChanged(:final researchLink):
          emit(state.copyWith(researchLink: researchLink));
        case ResearchExperienceChanged(:final researchExperience):
          emit(state.copyWith(researchExperience: researchExperience));
        case lookingForChanged(:final lookingFor, :final isAdded):
          emit(state.copyWith(
              lookingFor: isAdded
                  ? [...state.lookingFor, lookingFor]
                  : state.lookingFor.where((l) => l != lookingFor).toList()));
        case FileChanged():
          final result = await _filePickerService.pickImage();
          result.match(
            (l) => print(l),
            (r) => emit(state.copyWith(file: r)),
          );
        case OnSubmit():
          state.isValid() ? emit(state.copyWith(isCreatedSuccessfully: true)) : emit(state.copyWith(showError: true));
      }
    });
  }
}
