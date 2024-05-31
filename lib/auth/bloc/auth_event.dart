part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn(String userName, String password) = SignIn;
  const factory AuthEvent.checkSignInStatus() = CheckSignInStatus;
  const factory AuthEvent.signOut() = SignOut;
}
