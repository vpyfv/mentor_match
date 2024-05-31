import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mentor_match/core/file_picker/file_picker_service.dart';
import 'package:mentor_match/profile/mentor/domain/enums.dart';
import 'package:mentor_match/profile/student/domain/enums.dart';

part 'mentor_profile_create_event.dart';
part 'mentor_profile_create_state.dart';
part 'mentor_profile_create_bloc.freezed.dart';

@Injectable()
class MentorProfileCreateBloc extends Bloc<MentorProfileCreateEvent, MentorProfileCreateState> {
  final FilePickerService _filePickerService;
  MentorProfileCreateBloc(this._filePickerService) : super(MentorProfileCreateState.initial()) {
    on<MentorProfileCreateEvent>((event, emit) async {
      switch (event) {
        case PageNumChanged(:final pageNum):
          emit(state.copyWith(pageNum: pageNum));
        case FirstNameChanged(:final name):
          emit(state.copyWith(firstName: name));
        case LastNameChanged(:final name):
          emit(state.copyWith(lastName: name));
        case TitleChanged(:final name):
          emit(state.copyWith(title: name));
        case MentorRoleChanged(:final role):
          emit(state.copyWith(mentorRole: role));
        case BioSketchFileChanged():
          final result = await _filePickerService.pickImage();
          result.match(
            (l) => print("l"),
            (file) => emit(state.copyWith(bioSketchFile: file)),
          );
        case AcademicsChanged(:final academics, :final isAdded):
          emit(
            state.copyWith(
              academics:
                  isAdded ? [...state.academics, academics] : state.academics.where((l) => l != academics).toList(),
            ),
          );
        case IsActivelyRecruitingChanged(:final isActivelyRecruiting):
          emit(state.copyWith(isActivelyRecruiting: isActivelyRecruiting));
        case CvFileChanged():
          final result = await _filePickerService.pickImage();
          result.match(
            (l) => print("l"),
            (file) => emit(state.copyWith(cvFile: file)),
          );
        case UrlChanged(:final url):
          emit(state.copyWith(url: url));
        case CreateButtonClicked():
          state.isValid() ? emit(state.copyWith(isCreatedSuccessful: true)) : emit(state.copyWith(showError: true));
      }
    });
  }
}
