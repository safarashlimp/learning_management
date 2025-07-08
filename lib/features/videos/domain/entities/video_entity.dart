import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learning_management/features/videos/data/model/video_model.dart';
part 'video_entity.freezed.dart';
@freezed
class VideoEntity with _$VideoEntity {
  const VideoEntity._();
  const factory VideoEntity({
   required int id,
  required String title,
  required String description,
  required VideoType videoType,
  required String videoUrl,
  }) = _VideoEntity;
  factory VideoEntity.fromModel({required VideoModel model}) => VideoEntity(
    id: model.id,
    title: model.title,
    description: model.description,
    videoType: model.videoType,
    videoUrl: model.videoUrl
  );
  VideoModel toModel() =>
      VideoModel(id: id, title: title, description: description,videoType: videoType,videoUrl: videoUrl);
}
