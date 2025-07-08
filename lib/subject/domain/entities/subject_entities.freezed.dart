// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubjectEntities {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Create a copy of SubjectEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectEntitiesCopyWith<SubjectEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectEntitiesCopyWith<$Res> {
  factory $SubjectEntitiesCopyWith(
          SubjectEntities value, $Res Function(SubjectEntities) then) =
      _$SubjectEntitiesCopyWithImpl<$Res, SubjectEntities>;
  @useResult
  $Res call({int id, String title, String description, String image});
}

/// @nodoc
class _$SubjectEntitiesCopyWithImpl<$Res, $Val extends SubjectEntities>
    implements $SubjectEntitiesCopyWith<$Res> {
  _$SubjectEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? image = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectEntitiesImplCopyWith<$Res>
    implements $SubjectEntitiesCopyWith<$Res> {
  factory _$$SubjectEntitiesImplCopyWith(_$SubjectEntitiesImpl value,
          $Res Function(_$SubjectEntitiesImpl) then) =
      __$$SubjectEntitiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String description, String image});
}

/// @nodoc
class __$$SubjectEntitiesImplCopyWithImpl<$Res>
    extends _$SubjectEntitiesCopyWithImpl<$Res, _$SubjectEntitiesImpl>
    implements _$$SubjectEntitiesImplCopyWith<$Res> {
  __$$SubjectEntitiesImplCopyWithImpl(
      _$SubjectEntitiesImpl _value, $Res Function(_$SubjectEntitiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubjectEntities
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? image = null,
  }) {
    return _then(_$SubjectEntitiesImpl(
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubjectEntitiesImpl extends _SubjectEntities {
  const _$SubjectEntitiesImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.image})
      : super._();

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String image;

  @override
  String toString() {
    return 'SubjectEntities(id: $id, title: $title, description: $description, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectEntitiesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, image);

  /// Create a copy of SubjectEntities
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectEntitiesImplCopyWith<_$SubjectEntitiesImpl> get copyWith =>
      __$$SubjectEntitiesImplCopyWithImpl<_$SubjectEntitiesImpl>(
          this, _$identity);
}

abstract class _SubjectEntities extends SubjectEntities {
  const factory _SubjectEntities(
      {required final int id,
      required final String title,
      required final String description,
      required final String image}) = _$SubjectEntitiesImpl;
  const _SubjectEntities._() : super._();

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get image;

  /// Create a copy of SubjectEntities
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectEntitiesImplCopyWith<_$SubjectEntitiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
