import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learning_management/core/error/errors.dart';
import 'package:learning_management/features/modules/domain/entities/module_entity.dart';
part 'module_state.freezed.dart';
@freezed
 class ModuleState with _$ModuleState   {
    const factory ModuleState  .initial() = Initial;
  const factory ModuleState.loading() = loading;
   const factory ModuleState.error({required Failure failure})=Error;
 const factory ModuleState.loaded({required List<ModuleEntity> modules})=Loaded;
 }