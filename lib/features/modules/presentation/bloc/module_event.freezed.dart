// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ModuleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchModules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchModules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchModules,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllModules value) fetchModules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllModules value)? fetchModules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllModules value)? fetchModules,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleEventCopyWith<$Res> {
  factory $ModuleEventCopyWith(
          ModuleEvent value, $Res Function(ModuleEvent) then) =
      _$ModuleEventCopyWithImpl<$Res, ModuleEvent>;
}

/// @nodoc
class _$ModuleEventCopyWithImpl<$Res, $Val extends ModuleEvent>
    implements $ModuleEventCopyWith<$Res> {
  _$ModuleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModuleEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchAllModulesImplCopyWith<$Res> {
  factory _$$FetchAllModulesImplCopyWith(_$FetchAllModulesImpl value,
          $Res Function(_$FetchAllModulesImpl) then) =
      __$$FetchAllModulesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllModulesImplCopyWithImpl<$Res>
    extends _$ModuleEventCopyWithImpl<$Res, _$FetchAllModulesImpl>
    implements _$$FetchAllModulesImplCopyWith<$Res> {
  __$$FetchAllModulesImplCopyWithImpl(
      _$FetchAllModulesImpl _value, $Res Function(_$FetchAllModulesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAllModulesImpl implements FetchAllModules {
  const _$FetchAllModulesImpl();

  @override
  String toString() {
    return 'ModuleEvent.fetchModules()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllModulesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchModules,
  }) {
    return fetchModules();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchModules,
  }) {
    return fetchModules?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchModules,
    required TResult orElse(),
  }) {
    if (fetchModules != null) {
      return fetchModules();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchAllModules value) fetchModules,
  }) {
    return fetchModules(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchAllModules value)? fetchModules,
  }) {
    return fetchModules?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchAllModules value)? fetchModules,
    required TResult orElse(),
  }) {
    if (fetchModules != null) {
      return fetchModules(this);
    }
    return orElse();
  }
}

abstract class FetchAllModules implements ModuleEvent {
  const factory FetchAllModules() = _$FetchAllModulesImpl;
}
