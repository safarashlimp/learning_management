import 'package:dartz/dartz.dart';
import 'package:learning_management/core/error/errors.dart';
import 'package:learning_management/subject/domain/entities/subject_entities.dart';

abstract class SubjectRepository {
  Future<Either<Failure, List<SubjectEntities>>> fetchSubjects();
}
