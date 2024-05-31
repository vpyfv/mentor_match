part of 'student_profile_create_bloc.dart';

@freezed
sealed class StudentProfileCreateEvent with _$StudentProfileCreateEvent {
  const factory StudentProfileCreateEvent.editPageNumberChanged(int pageNum) = EditPageNumberChanged;
  const factory StudentProfileCreateEvent.academicsChanged(Academics academics) = AcademicsChanged;
  const factory StudentProfileCreateEvent.researchExperienceChanged(bool researchExperience) =
      ResearchExperienceChanged;
  const factory StudentProfileCreateEvent.yearsOfExperienceChanged(String yearsOfExperience) = YearsOfExperienceChanged;
  const factory StudentProfileCreateEvent.researchLinkChanged(String researchLink) = ResearchLinkChanged;
  const factory StudentProfileCreateEvent.lookingForChanged(LookingFor lookingFor, bool isAdded) = lookingForChanged;
  const factory StudentProfileCreateEvent.fileChanged() = FileChanged;
  const factory StudentProfileCreateEvent.firstNameChanged(String name) = FirstNameChanged;
  const factory StudentProfileCreateEvent.lastNameChanged(String name) = LastNameChanged;
  const factory StudentProfileCreateEvent.onSubmit() = OnSubmit;
}
