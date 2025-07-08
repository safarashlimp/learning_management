//new

import 'package:freezed_annotation/freezed_annotation.dart';
part 'subject_model.freezed.dart';
part 'subject_model.g.dart';

@freezed
class SubjectModel with _$SubjectModel {
  const factory SubjectModel({
    @JsonKey(name: "id")
        required int id,
        @JsonKey(name: "title")
        required String title,
        @JsonKey(name: "description")
        required String description,
        @JsonKey(name: "image")
        required String image,
  }) = _SubjectModel;

  factory SubjectModel.fromJson(Map<String, dynamic> json) =>
      _$SubjectModelFromJson(json);
}