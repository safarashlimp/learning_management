import 'package:dartz/dartz.dart';
import 'package:learning_management/core/error/errors.dart';
import 'package:learning_management/features/modules/domain/entities/module_entity.dart';


abstract class ModuleRepository {
  Future<Either<Failure, List<ModuleEntity>>> fetchModules();
}
