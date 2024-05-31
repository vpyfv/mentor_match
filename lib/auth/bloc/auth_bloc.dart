import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mentor_match/auth/infrastructure/auth_repo.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@Injectable()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo _authRepo;
  AuthBloc(this._authRepo) : super(const AuthState.signingIn()) {
    on<AuthEvent>((event, emit) async {
      switch (event) {
        case SignIn(:final userName, :final password):
          if (userName.isNotEmpty && password.isNotEmpty) {
            emit(const AuthState.signingIn());
            final signInResult = await _authRepo.signIn(userName, password);
            signInResult.fold(
              (l) => emit(AuthState.signInFailed(l)),
              (r) => emit(const AuthState.signedIn()),
            );
          }
        case CheckSignInStatus():
          emit(const AuthState.signingIn());
          final isAlreadySignedIn = _authRepo.checkIfUserSignedIn();
          isAlreadySignedIn.fold(
            (l) => emit(AuthState.signInFailed(l)),
            (r) => emit(const AuthState.signedIn()),
          );
        case SignOut():
          final signOutResult = await _authRepo.signOut();
          signOutResult.fold(
            (l) => emit(AuthState.signOutFailed(l)),
            (r) => emit(const AuthState.signedOut()),
          );
      }
    });
  }
}
