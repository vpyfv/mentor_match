part of 'mentor_profile_create_bloc.dart';

@freezed
class MentorProfileCreateState with _$MentorProfileCreateState {
  const MentorProfileCreateState._();
  const factory MentorProfileCreateState({
    required int pageNum,
    required bool showError,
    required bool isCreatedSuccessful,
    required String firstName,
    required String lastName,
    required String title,
    required MentorRole mentorRole,
    required File? bioSketchFile,
    required List<Academics> academics,
    required bool isActivelyRecruiting,
    required File? cvFile,
    required String url,
  }) = _MentorProfileCreateState;

  factory MentorProfileCreateState.initial() => const MentorProfileCreateState(
        pageNum: 1,
        showError: false,
        isCreatedSuccessful: false,
        firstName: '',
        lastName: '',
        title: '',
        mentorRole: MentorRole.juniorFaculty,
        bioSketchFile: null,
        academics: [],
        isActivelyRecruiting: false,
        cvFile: null,
        url: '',
      );

  bool isValid() {
    return firstName.isNotEmpty &&
        lastName.isNotEmpty &&
        title.isNotEmpty &&
        bioSketchFile != null &&
        (isActivelyRecruiting ? academics.isNotEmpty && cvFile != null && url.isNotEmpty : true);
  }
}
