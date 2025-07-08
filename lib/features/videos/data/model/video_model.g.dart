// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoModelImpl _$$VideoModelImplFromJson(Map<String, dynamic> json) =>
    _$VideoModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      videoType: $enumDecode(_$VideoTypeEnumMap, json['video_type']),
      videoUrl: json['video_url'] as String,
    );

Map<String, dynamic> _$$VideoModelImplToJson(_$VideoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'video_type': _$VideoTypeEnumMap[instance.videoType]!,
      'video_url': instance.videoUrl,
    };

const _$VideoTypeEnumMap = {
  VideoType.VIMEO: 'Vimeo',
  VideoType.YOU_TUBE: 'YouTube',
};
