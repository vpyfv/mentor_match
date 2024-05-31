// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) signIn,
    required TResult Function() checkSignInStatus,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? signIn,
    TResult? Function()? checkSignInStatus,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? signIn,
    TResult Function()? checkSignInStatus,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(CheckSignInStatus value) checkSignInStatus,
    required TResult Function(SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(CheckSignInStatus value)? checkSignInStatus,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName, String password});
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
  }) {
    return _then(_$SignInImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInImpl implements SignIn {
  const _$SignInImpl(this.userName, this.password);

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signIn(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      __$$SignInImplCopyWithImpl<_$SignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) signIn,
    required TResult Function() checkSignInStatus,
    required TResult Function() signOut,
  }) {
    return signIn(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? signIn,
    TResult? Function()? checkSignInStatus,
    TResult? Function()? signOut,
  }) {
    return signIn?.call(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? signIn,
    TResult Function()? checkSignInStatus,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(userName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(CheckSignInStatus value) checkSignInStatus,
    required TResult Function(SignOut value) signOut,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(SignOut value)? signOut,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(CheckSignInStatus value)? checkSignInStatus,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements AuthEvent {
  const factory SignIn(final String userName, final String password) =
      _$SignInImpl;

  String get userName;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckSignInStatusImplCopyWith<$Res> {
  factory _$$CheckSignInStatusImplCopyWith(_$CheckSignInStatusImpl value,
          $Res Function(_$CheckSignInStatusImpl) then) =
      __$$CheckSignInStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckSignInStatusImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckSignInStatusImpl>
    implements _$$CheckSignInStatusImplCopyWith<$Res> {
  __$$CheckSignInStatusImplCopyWithImpl(_$CheckSignInStatusImpl _value,
      $Res Function(_$CheckSignInStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckSignInStatusImpl implements CheckSignInStatus {
  const _$CheckSignInStatusImpl();

  @override
  String toString() {
    return 'AuthEvent.checkSignInStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckSignInStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) signIn,
    required TResult Function() checkSignInStatus,
    required TResult Function() signOut,
  }) {
    return checkSignInStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? signIn,
    TResult? Function()? checkSignInStatus,
    TResult? Function()? signOut,
  }) {
    return checkSignInStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? signIn,
    TResult Function()? checkSignInStatus,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (checkSignInStatus != null) {
      return checkSignInStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(CheckSignInStatus value) checkSignInStatus,
    required TResult Function(SignOut value) signOut,
  }) {
    return checkSignInStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(SignOut value)? signOut,
  }) {
    return checkSignInStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(CheckSignInStatus value)? checkSignInStatus,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (checkSignInStatus != null) {
      return checkSignInStatus(this);
    }
    return orElse();
  }
}

abstract class CheckSignInStatus implements AuthEvent {
  const factory CheckSignInStatus() = _$CheckSignInStatusImpl;
}

/// @nodoc
abstract class _$$SignOutImplCopyWith<$Res> {
  factory _$$SignOutImplCopyWith(
          _$SignOutImpl value, $Res Function(_$SignOutImpl) then) =
      __$$SignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutImpl>
    implements _$$SignOutImplCopyWith<$Res> {
  __$$SignOutImplCopyWithImpl(
      _$SignOutImpl _value, $Res Function(_$SignOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutImpl implements SignOut {
  const _$SignOutImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String password) signIn,
    required TResult Function() checkSignInStatus,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String password)? signIn,
    TResult? Function()? checkSignInStatus,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String password)? signIn,
    TResult Function()? checkSignInStatus,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(CheckSignInStatus value) checkSignInStatus,
    required TResult Function(SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(CheckSignInStatus value)? checkSignInStatus,
    TResult? Function(SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(CheckSignInStatus value)? checkSignInStatus,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements AuthEvent {
  const factory SignOut() = _$SignOutImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signingIn,
    required TResult Function() signedIn,
    required TResult Function(String error) signInFailed,
    required TResult Function() signedOut,
    required TResult Function(String error) signOutFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signingIn,
    TResult? Function()? signedIn,
    TResult? Function(String error)? signInFailed,
    TResult? Function()? signedOut,
    TResult? Function(String error)? signOutFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signingIn,
    TResult Function()? signedIn,
    TResult Function(String error)? signInFailed,
    TResult Function()? signedOut,
    TResult Function(String error)? signOutFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SigningIn value) signingIn,
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignInFailed value) signInFailed,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SignOutFailed value) signOutFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SigningIn value)? signingIn,
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignInFailed value)? signInFailed,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(SignOutFailed value)? signOutFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SigningIn value)? signingIn,
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignInFailed value)? signInFailed,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SignOutFailed value)? signOutFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SigningInImplCopyWith<$Res> {
  factory _$$SigningInImplCopyWith(
          _$SigningInImpl value, $Res Function(_$SigningInImpl) then) =
      __$$SigningInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SigningInImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SigningInImpl>
    implements _$$SigningInImplCopyWith<$Res> {
  __$$SigningInImplCopyWithImpl(
      _$SigningInImpl _value, $Res Function(_$SigningInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SigningInImpl implements SigningIn {
  const _$SigningInImpl();

  @override
  String toString() {
    return 'AuthState.signingIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SigningInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signingIn,
    required TResult Function() signedIn,
    required TResult Function(String error) signInFailed,
    required TResult Function() signedOut,
    required TResult Function(String error) signOutFailed,
  }) {
    return signingIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signingIn,
    TResult? Function()? signedIn,
    TResult? Function(String error)? signInFailed,
    TResult? Function()? signedOut,
    TResult? Function(String error)? signOutFailed,
  }) {
    return signingIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signingIn,
    TResult Function()? signedIn,
    TResult Function(String error)? signInFailed,
    TResult Function()? signedOut,
    TResult Function(String error)? signOutFailed,
    required TResult orElse(),
  }) {
    if (signingIn != null) {
      return signingIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SigningIn value) signingIn,
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignInFailed value) signInFailed,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SignOutFailed value) signOutFailed,
  }) {
    return signingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SigningIn value)? signingIn,
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignInFailed value)? signInFailed,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(SignOutFailed value)? signOutFailed,
  }) {
    return signingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SigningIn value)? signingIn,
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignInFailed value)? signInFailed,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SignOutFailed value)? signOutFailed,
    required TResult orElse(),
  }) {
    if (signingIn != null) {
      return signingIn(this);
    }
    return orElse();
  }
}

abstract class SigningIn implements AuthState {
  const factory SigningIn() = _$SigningInImpl;
}

/// @nodoc
abstract class _$$SignedInImplCopyWith<$Res> {
  factory _$$SignedInImplCopyWith(
          _$SignedInImpl value, $Res Function(_$SignedInImpl) then) =
      __$$SignedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedInImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignedInImpl>
    implements _$$SignedInImplCopyWith<$Res> {
  __$$SignedInImplCopyWithImpl(
      _$SignedInImpl _value, $Res Function(_$SignedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignedInImpl implements SignedIn {
  const _$SignedInImpl();

  @override
  String toString() {
    return 'AuthState.signedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signingIn,
    required TResult Function() signedIn,
    required TResult Function(String error) signInFailed,
    required TResult Function() signedOut,
    required TResult Function(String error) signOutFailed,
  }) {
    return signedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signingIn,
    TResult? Function()? signedIn,
    TResult? Function(String error)? signInFailed,
    TResult? Function()? signedOut,
    TResult? Function(String error)? signOutFailed,
  }) {
    return signedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signingIn,
    TResult Function()? signedIn,
    TResult Function(String error)? signInFailed,
    TResult Function()? signedOut,
    TResult Function(String error)? signOutFailed,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SigningIn value) signingIn,
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignInFailed value) signInFailed,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SignOutFailed value) signOutFailed,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SigningIn value)? signingIn,
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignInFailed value)? signInFailed,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(SignOutFailed value)? signOutFailed,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SigningIn value)? signingIn,
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignInFailed value)? signInFailed,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SignOutFailed value)? signOutFailed,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class SignedIn implements AuthState {
  const factory SignedIn() = _$SignedInImpl;
}

/// @nodoc
abstract class _$$SignInFailedImplCopyWith<$Res> {
  factory _$$SignInFailedImplCopyWith(
          _$SignInFailedImpl value, $Res Function(_$SignInFailedImpl) then) =
      __$$SignInFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SignInFailedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignInFailedImpl>
    implements _$$SignInFailedImplCopyWith<$Res> {
  __$$SignInFailedImplCopyWithImpl(
      _$SignInFailedImpl _value, $Res Function(_$SignInFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SignInFailedImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInFailedImpl implements SignInFailed {
  const _$SignInFailedImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.signInFailed(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInFailedImplCopyWith<_$SignInFailedImpl> get copyWith =>
      __$$SignInFailedImplCopyWithImpl<_$SignInFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signingIn,
    required TResult Function() signedIn,
    required TResult Function(String error) signInFailed,
    required TResult Function() signedOut,
    required TResult Function(String error) signOutFailed,
  }) {
    return signInFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signingIn,
    TResult? Function()? signedIn,
    TResult? Function(String error)? signInFailed,
    TResult? Function()? signedOut,
    TResult? Function(String error)? signOutFailed,
  }) {
    return signInFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signingIn,
    TResult Function()? signedIn,
    TResult Function(String error)? signInFailed,
    TResult Function()? signedOut,
    TResult Function(String error)? signOutFailed,
    required TResult orElse(),
  }) {
    if (signInFailed != null) {
      return signInFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SigningIn value) signingIn,
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignInFailed value) signInFailed,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SignOutFailed value) signOutFailed,
  }) {
    return signInFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SigningIn value)? signingIn,
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignInFailed value)? signInFailed,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(SignOutFailed value)? signOutFailed,
  }) {
    return signInFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SigningIn value)? signingIn,
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignInFailed value)? signInFailed,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SignOutFailed value)? signOutFailed,
    required TResult orElse(),
  }) {
    if (signInFailed != null) {
      return signInFailed(this);
    }
    return orElse();
  }
}

abstract class SignInFailed implements AuthState {
  const factory SignInFailed(final String error) = _$SignInFailedImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$SignInFailedImplCopyWith<_$SignInFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignedOutImplCopyWith<$Res> {
  factory _$$SignedOutImplCopyWith(
          _$SignedOutImpl value, $Res Function(_$SignedOutImpl) then) =
      __$$SignedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedOutImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignedOutImpl>
    implements _$$SignedOutImplCopyWith<$Res> {
  __$$SignedOutImplCopyWithImpl(
      _$SignedOutImpl _value, $Res Function(_$SignedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignedOutImpl implements SignedOut {
  const _$SignedOutImpl();

  @override
  String toString() {
    return 'AuthState.signedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signingIn,
    required TResult Function() signedIn,
    required TResult Function(String error) signInFailed,
    required TResult Function() signedOut,
    required TResult Function(String error) signOutFailed,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signingIn,
    TResult? Function()? signedIn,
    TResult? Function(String error)? signInFailed,
    TResult? Function()? signedOut,
    TResult? Function(String error)? signOutFailed,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signingIn,
    TResult Function()? signedIn,
    TResult Function(String error)? signInFailed,
    TResult Function()? signedOut,
    TResult Function(String error)? signOutFailed,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SigningIn value) signingIn,
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignInFailed value) signInFailed,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SignOutFailed value) signOutFailed,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SigningIn value)? signingIn,
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignInFailed value)? signInFailed,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(SignOutFailed value)? signOutFailed,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SigningIn value)? signingIn,
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignInFailed value)? signInFailed,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SignOutFailed value)? signOutFailed,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements AuthState {
  const factory SignedOut() = _$SignedOutImpl;
}

/// @nodoc
abstract class _$$SignOutFailedImplCopyWith<$Res> {
  factory _$$SignOutFailedImplCopyWith(
          _$SignOutFailedImpl value, $Res Function(_$SignOutFailedImpl) then) =
      __$$SignOutFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SignOutFailedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignOutFailedImpl>
    implements _$$SignOutFailedImplCopyWith<$Res> {
  __$$SignOutFailedImplCopyWithImpl(
      _$SignOutFailedImpl _value, $Res Function(_$SignOutFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SignOutFailedImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignOutFailedImpl implements SignOutFailed {
  const _$SignOutFailedImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.signOutFailed(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignOutFailedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignOutFailedImplCopyWith<_$SignOutFailedImpl> get copyWith =>
      __$$SignOutFailedImplCopyWithImpl<_$SignOutFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signingIn,
    required TResult Function() signedIn,
    required TResult Function(String error) signInFailed,
    required TResult Function() signedOut,
    required TResult Function(String error) signOutFailed,
  }) {
    return signOutFailed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signingIn,
    TResult? Function()? signedIn,
    TResult? Function(String error)? signInFailed,
    TResult? Function()? signedOut,
    TResult? Function(String error)? signOutFailed,
  }) {
    return signOutFailed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signingIn,
    TResult Function()? signedIn,
    TResult Function(String error)? signInFailed,
    TResult Function()? signedOut,
    TResult Function(String error)? signOutFailed,
    required TResult orElse(),
  }) {
    if (signOutFailed != null) {
      return signOutFailed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SigningIn value) signingIn,
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignInFailed value) signInFailed,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(SignOutFailed value) signOutFailed,
  }) {
    return signOutFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SigningIn value)? signingIn,
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignInFailed value)? signInFailed,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(SignOutFailed value)? signOutFailed,
  }) {
    return signOutFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SigningIn value)? signingIn,
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignInFailed value)? signInFailed,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(SignOutFailed value)? signOutFailed,
    required TResult orElse(),
  }) {
    if (signOutFailed != null) {
      return signOutFailed(this);
    }
    return orElse();
  }
}

abstract class SignOutFailed implements AuthState {
  const factory SignOutFailed(final String error) = _$SignOutFailedImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$SignOutFailedImplCopyWith<_$SignOutFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
