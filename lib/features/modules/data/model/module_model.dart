import 'package:freezed_annotation/freezed_annotation.dart';
part 'module_model.freezed.dart';
part 'module_model.g.dart';

@freezed
class ModuleModel with _$ModuleModel {
  const factory ModuleModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "description") required String description,
  }) = _ModuleModel;

  factory ModuleModel.fromJson(Map<String, dynamic> json) =>
      _$ModuleModelFromJson(json);
}
