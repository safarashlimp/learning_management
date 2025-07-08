import 'package:freezed_annotation/freezed_annotation.dart';
part 'module_event.freezed.dart';
@freezed
class ModuleEvent with _$ModuleEvent {
  const factory ModuleEvent.fetchModules() = FetchAllModules;
}