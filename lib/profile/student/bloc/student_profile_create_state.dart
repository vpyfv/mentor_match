part of 'student_profile_create_bloc.dart';

@freezed
class StudentProfileCreateState with _$StudentProfileCreateState {
  const StudentProfileCreateState._();

  const factory StudentProfileCreateState({
    required bool showError,
    required int pageNum,
    required bool isCreatedSuccessfully,
    required String firstName,
    required String lastName,
    required Academics academics,
    required bool researchExperience,
    required int yearsOfExperience,
    required String researchLink,
    required List<LookingFor> lookingFor,
    required File? file,
  }) = _StudentProfileCreateState;

  factory StudentProfileCreateState.initial() => const StudentProfileCreateState(
        showError: false,
        pageNum: 1,
        isCreatedSuccessfully: false,
        firstName: '',
        lastName: '',
        academics: Academics.underGraduate,
        researchExperience: false,
        yearsOfExperience: 0,
        researchLink: '',
        lookingFor: [],
        file: null,
      );

  bool isValid() {
    return firstName.isNotEmpty &&
        lastName.isNotEmpty &&
        lookingFor.isNotEmpty &&
        file != null &&
        (researchExperience ? yearsOfExperience > 0 && researchLink.isNotEmpty : true);
  }
}
