//new

import 'package:freezed_annotation/freezed_annotation.dart';
part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
class VideoModel with _$VideoModel {
  const factory VideoModel({
     @JsonKey(name: "id")
        required int id,
        @JsonKey(name: "title")
        required String title,
        @JsonKey(name: "description")
        required String description,
        @JsonKey(name: "video_type")
        required VideoType videoType,
        @JsonKey(name: "video_url")
        required String videoUrl,
  }) = _VideoModel;
  

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}
enum VideoType {
    @JsonValue("Vimeo")
    VIMEO,
    @JsonValue("YouTube")
    YOU_TUBE
}