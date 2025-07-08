// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchVideos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllVideos value) fetchVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllVideos value)? fetchVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllVideos value)? fetchVideos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoEventCopyWith<$Res> {
  factory $VideoEventCopyWith(
          VideoEvent value, $Res Function(VideoEvent) then) =
      _$VideoEventCopyWithImpl<$Res, VideoEvent>;
}

/// @nodoc
class _$VideoEventCopyWithImpl<$Res, $Val extends VideoEvent>
    implements $VideoEventCopyWith<$Res> {
  _$VideoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchAllVideosImplCopyWith<$Res> {
  factory _$$FetchAllVideosImplCopyWith(_$FetchAllVideosImpl value,
          $Res Function(_$FetchAllVideosImpl) then) =
      __$$FetchAllVideosImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllVideosImplCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res, _$FetchAllVideosImpl>
    implements _$$FetchAllVideosImplCopyWith<$Res> {
  __$$FetchAllVideosImplCopyWithImpl(
      _$FetchAllVideosImpl _value, $Res Function(_$FetchAllVideosImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAllVideosImpl implements FetchAllVideos {
  const _$FetchAllVideosImpl();

  @override
  String toString() {
    return 'VideoEvent.fetchVideos()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllVideosImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchVideos,
  }) {
    return fetchVideos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchVideos,
  }) {
    return fetchVideos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchVideos,
    required TResult orElse(),
  }) {
    if (fetchVideos != null) {
      return fetchVideos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllVideos value) fetchVideos,
  }) {
    return fetchVideos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllVideos value)? fetchVideos,
  }) {
    return fetchVideos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllVideos value)? fetchVideos,
    required TResult orElse(),
  }) {
    if (fetchVideos != null) {
      return fetchVideos(this);
    }
    return orElse();
  }
}

abstract class FetchAllVideos implements VideoEvent {
  const factory FetchAllVideos() = _$FetchAllVideosImpl;
}
