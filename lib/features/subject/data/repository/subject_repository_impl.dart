import 'package:dartz/dartz.dart';
import 'package:learning_management/core/error/errors.dart';
import 'package:learning_management/features/subject/data/data_source/subject_data_source.dart';
import 'package:learning_management/features/subject/data/model/subject_model.dart';
import 'package:learning_management/features/subject/domain/entities/subject_entities.dart';
import 'package:learning_management/features/subject/domain/repository/subject_repository.dart';

class SubjectRepositoryImpl implements SubjectRepository {
  final SubjectRemoteDataSource remoteDataSource;

  SubjectRepositoryImpl(this.remoteDataSource);


  @override
Future<Either<Failure, List<SubjectEntities>>> fetchSubjects() async {
 {
    try{
      final List<SubjectModel> responce = await remoteDataSource.fetchSubjects();

      return Right(responce.map((e)=>SubjectEntities.fromModel(model:e)).toList());
    
    }catch(e){
      return Left(e is Failure? e : UnknownFailure(e.toString()));
    }
}

}
}