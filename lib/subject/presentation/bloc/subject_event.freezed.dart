// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSubjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSubjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSubjects,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllSubjects value) fetchSubjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllSubjects value)? fetchSubjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllSubjects value)? fetchSubjects,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectEventCopyWith<$Res> {
  factory $SubjectEventCopyWith(
          SubjectEvent value, $Res Function(SubjectEvent) then) =
      _$SubjectEventCopyWithImpl<$Res, SubjectEvent>;
}

/// @nodoc
class _$SubjectEventCopyWithImpl<$Res, $Val extends SubjectEvent>
    implements $SubjectEventCopyWith<$Res> {
  _$SubjectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchAllSubjectsImplCopyWith<$Res> {
  factory _$$FetchAllSubjectsImplCopyWith(_$FetchAllSubjectsImpl value,
          $Res Function(_$FetchAllSubjectsImpl) then) =
      __$$FetchAllSubjectsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllSubjectsImplCopyWithImpl<$Res>
    extends _$SubjectEventCopyWithImpl<$Res, _$FetchAllSubjectsImpl>
    implements _$$FetchAllSubjectsImplCopyWith<$Res> {
  __$$FetchAllSubjectsImplCopyWithImpl(_$FetchAllSubjectsImpl _value,
      $Res Function(_$FetchAllSubjectsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubjectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAllSubjectsImpl implements FetchAllSubjects {
  const _$FetchAllSubjectsImpl();

  @override
  String toString() {
    return 'SubjectEvent.fetchSubjects()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllSubjectsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSubjects,
  }) {
    return fetchSubjects();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchSubjects,
  }) {
    return fetchSubjects?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSubjects,
    required TResult orElse(),
  }) {
    if (fetchSubjects != null) {
      return fetchSubjects();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllSubjects value) fetchSubjects,
  }) {
    return fetchSubjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllSubjects value)? fetchSubjects,
  }) {
    return fetchSubjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllSubjects value)? fetchSubjects,
    required TResult orElse(),
  }) {
    if (fetchSubjects != null) {
      return fetchSubjects(this);
    }
    return orElse();
  }
}

abstract class FetchAllSubjects implements SubjectEvent {
  const factory FetchAllSubjects() = _$FetchAllSubjectsImpl;
}
