part of 'mentor_profile_create_bloc.dart';

@freezed
sealed class MentorProfileCreateEvent with _$MentorProfileCreateEvent {
  const factory MentorProfileCreateEvent.pageNumChanged(int pageNum) = PageNumChanged;
  const factory MentorProfileCreateEvent.firstNameChanged(String name) = FirstNameChanged;
  const factory MentorProfileCreateEvent.lastNameChanged(String name) = LastNameChanged;
  const factory MentorProfileCreateEvent.titleChanged(String name) = TitleChanged;
  const factory MentorProfileCreateEvent.mentorRoleChanged(MentorRole role) = MentorRoleChanged;
  const factory MentorProfileCreateEvent.bioSketchFileChanged() = BioSketchFileChanged;
  const factory MentorProfileCreateEvent.academicsChanged(Academics academics, bool isAdded) = AcademicsChanged;
  const factory MentorProfileCreateEvent.isActivelyRecruitingChanged(bool isActivelyRecruiting) =
      IsActivelyRecruitingChanged;
  const factory MentorProfileCreateEvent.cvFileChanged() = CvFileChanged;
  const factory MentorProfileCreateEvent.urlChanged(String url) = UrlChanged;
  const factory MentorProfileCreateEvent.createButtonClicked() = CreateButtonClicked;
}
