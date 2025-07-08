import 'package:dartz/dartz.dart';
import 'package:learning_management/core/error/errors.dart';
import 'package:learning_management/features/modules/data/data_sources/module_data_source.dart';
import 'package:learning_management/features/modules/data/model/module_model.dart';
import 'package:learning_management/features/modules/domain/entities/module_entity.dart';
import 'package:learning_management/features/modules/domain/repository/module_repository.dart';

class ModuleRepositoryImpl implements ModuleRepository {
  final ModuleDataSource dataSource;

  ModuleRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, List<ModuleEntity>>> fetchModules() async {
    {
      try {
        final List<ModuleModel> responce = await dataSource.fetchModules();

        return Right(
          responce.map((e) => ModuleEntity.fromModel(model: e)).toList(),
        );
      } catch (e) {
        return Left(e is Failure ? e : UnknownFailure(e.toString()));
      }
    }
  }
}
