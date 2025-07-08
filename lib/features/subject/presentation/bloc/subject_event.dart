import 'package:freezed_annotation/freezed_annotation.dart';
part 'subject_event.freezed.dart';

@freezed
class SubjectEvent with _$SubjectEvent {
  const factory SubjectEvent.fetchSubjects() = FetchAllSubjects;
}
