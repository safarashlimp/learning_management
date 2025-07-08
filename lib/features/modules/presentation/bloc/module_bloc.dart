import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learning_management/features/modules/domain/entities/module_entity.dart';
import 'package:learning_management/features/modules/domain/repository/module_repository.dart';
import 'package:learning_management/features/modules/presentation/bloc/module_event.dart';
import 'package:learning_management/features/modules/presentation/bloc/module_state.dart';

@freezed
class ModuleBloc extends Bloc<ModuleEvent, ModuleState> {
  final ModuleRepository repository;

  ModuleBloc(this.repository) : super(const ModuleState.initial()) {
    on<FetchAllModules>((event, emit) async {
      emit(const ModuleState.loading());

      final response = await repository.fetchModules();

      response.fold((failure) => emit(ModuleState.error(failure: failure)), (
        subjectList,
      ) {
        final moduleList = subjectList
            .map( 
              (subject) => ModuleEntity(
                id: subject.id,
                title: subject.title,
                description: subject.description,
              ),
            )
            .toList();
        emit(ModuleState.loaded(modules: moduleList));
      });
    });
  }
}
