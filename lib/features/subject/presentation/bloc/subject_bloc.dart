import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learning_management/features/subject/domain/reository/subject_repository.dart';
import 'package:learning_management/features/subject/presentation/bloc/subject_event.dart';
import 'package:learning_management/features/subject/presentation/bloc/subjet_state.dart';

@freezed
class SubjectBloc extends Bloc<SubjectEvent, SubjectState> {
  final SubjectRepository repository;

  SubjectBloc(this.repository) : super(const SubjectState.initial()) {
    on<FetchAllSubjects>((event, emit) async {
      emit(const SubjectState.loading());

      final response = await repository.fetchSubjects();

      response.fold(
        (failure) => emit(SubjectState.error(failure: failure)),
        (subjects) => emit(SubjectState.loaded(subject: subjects)),
      );
    });
  }
}
