// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scroll_bar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScrollBar {
  int get pageNum => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScrollBarCopyWith<ScrollBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScrollBarCopyWith<$Res> {
  factory $ScrollBarCopyWith(ScrollBar value, $Res Function(ScrollBar) then) =
      _$ScrollBarCopyWithImpl<$Res, ScrollBar>;
  @useResult
  $Res call({int pageNum, bool isValid});
}

/// @nodoc
class _$ScrollBarCopyWithImpl<$Res, $Val extends ScrollBar>
    implements $ScrollBarCopyWith<$Res> {
  _$ScrollBarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNum = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      pageNum: null == pageNum
          ? _value.pageNum
          : pageNum // ignore: cast_nullable_to_non_nullable
              as int,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScrollBarImplCopyWith<$Res>
    implements $ScrollBarCopyWith<$Res> {
  factory _$$ScrollBarImplCopyWith(
          _$ScrollBarImpl value, $Res Function(_$ScrollBarImpl) then) =
      __$$ScrollBarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageNum, bool isValid});
}

/// @nodoc
class __$$ScrollBarImplCopyWithImpl<$Res>
    extends _$ScrollBarCopyWithImpl<$Res, _$ScrollBarImpl>
    implements _$$ScrollBarImplCopyWith<$Res> {
  __$$ScrollBarImplCopyWithImpl(
      _$ScrollBarImpl _value, $Res Function(_$ScrollBarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageNum = null,
    Object? isValid = null,
  }) {
    return _then(_$ScrollBarImpl(
      pageNum: null == pageNum
          ? _value.pageNum
          : pageNum // ignore: cast_nullable_to_non_nullable
              as int,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ScrollBarImpl implements _ScrollBar {
  const _$ScrollBarImpl({required this.pageNum, required this.isValid});

  @override
  final int pageNum;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'ScrollBar(pageNum: $pageNum, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrollBarImpl &&
            (identical(other.pageNum, pageNum) || other.pageNum == pageNum) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageNum, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrollBarImplCopyWith<_$ScrollBarImpl> get copyWith =>
      __$$ScrollBarImplCopyWithImpl<_$ScrollBarImpl>(this, _$identity);
}

abstract class _ScrollBar implements ScrollBar {
  const factory _ScrollBar(
      {required final int pageNum,
      required final bool isValid}) = _$ScrollBarImpl;

  @override
  int get pageNum;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$ScrollBarImplCopyWith<_$ScrollBarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
