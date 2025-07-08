import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learning_management/core/error/errors.dart';
import 'package:learning_management/subject/domain/entities/subject_entities.dart';
part 'subjet_state.freezed.dart';
@freezed
 class SubjectState with _$SubjectState  {
    const factory SubjectState .initial() = Initial;
  const factory SubjectState.loading() = loading;
   const factory SubjectState.error({required Failure failure})=Error;
 const factory SubjectState.loaded({required List<SubjectEntities> subject})=Loaded;
 }