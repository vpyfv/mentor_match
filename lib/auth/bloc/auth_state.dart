part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.signingIn() = SigningIn;
  const factory AuthState.signedIn() = SignedIn;
  const factory AuthState.signInFailed(String error) = SignInFailed;
  const factory AuthState.signedOut() = SignedOut;
  const factory AuthState.signOutFailed(String error) = SignOutFailed;
}
