// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'module_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ModuleEntity {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Create a copy of ModuleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModuleEntityCopyWith<ModuleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModuleEntityCopyWith<$Res> {
  factory $ModuleEntityCopyWith(
          ModuleEntity value, $Res Function(ModuleEntity) then) =
      _$ModuleEntityCopyWithImpl<$Res, ModuleEntity>;
  @useResult
  $Res call({int id, String title, String description});
}

/// @nodoc
class _$ModuleEntityCopyWithImpl<$Res, $Val extends ModuleEntity>
    implements $ModuleEntityCopyWith<$Res> {
  _$ModuleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModuleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModuleEntityImplCopyWith<$Res>
    implements $ModuleEntityCopyWith<$Res> {
  factory _$$ModuleEntityImplCopyWith(
          _$ModuleEntityImpl value, $Res Function(_$ModuleEntityImpl) then) =
      __$$ModuleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String description});
}

/// @nodoc
class __$$ModuleEntityImplCopyWithImpl<$Res>
    extends _$ModuleEntityCopyWithImpl<$Res, _$ModuleEntityImpl>
    implements _$$ModuleEntityImplCopyWith<$Res> {
  __$$ModuleEntityImplCopyWithImpl(
      _$ModuleEntityImpl _value, $Res Function(_$ModuleEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModuleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$ModuleEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ModuleEntityImpl extends _ModuleEntity {
  const _$ModuleEntityImpl(
      {required this.id, required this.title, required this.description})
      : super._();

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'ModuleEntity(id: $id, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModuleEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description);

  /// Create a copy of ModuleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModuleEntityImplCopyWith<_$ModuleEntityImpl> get copyWith =>
      __$$ModuleEntityImplCopyWithImpl<_$ModuleEntityImpl>(this, _$identity);
}

abstract class _ModuleEntity extends ModuleEntity {
  const factory _ModuleEntity(
      {required final int id,
      required final String title,
      required final String description}) = _$ModuleEntityImpl;
  const _ModuleEntity._() : super._();

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;

  /// Create a copy of ModuleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModuleEntityImplCopyWith<_$ModuleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
