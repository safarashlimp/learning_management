import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/subject_model.dart';

part 'subject_entities.freezed.dart';

@freezed
class SubjectEntities with _$SubjectEntities {
  const SubjectEntities._();
  const factory SubjectEntities({required int id, required String title,required String description,required String image}) =
      _SubjectEntities;
  factory SubjectEntities.fromModel({required SubjectModel model}) =>
      SubjectEntities(id: model.id, title: model.title, description: model.description,image: model.image);
  SubjectModel toModel() => SubjectModel(id: id, title: title,description: description, image: image);
}
