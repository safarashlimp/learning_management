

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learning_management/features/modules/data/model/module_model.dart';
part 'module_entity.freezed.dart';

@freezed
class ModuleEntity with _$ModuleEntity {
  const ModuleEntity._();
  const factory ModuleEntity({required int id, required String title,required String description,}) =
      _ModuleEntity;
  factory ModuleEntity.fromModel({required ModuleModel model}) =>
      ModuleEntity(id: model.id, title: model.title, description: model.description,);
  ModuleModel toModel() => ModuleModel(id: id, title: title,description: description,);
}