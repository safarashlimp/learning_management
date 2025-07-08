import 'package:dartz/dartz.dart';
import 'package:learning_management/core/error/errors.dart';
import 'package:learning_management/features/videos/data/data_source/video_data_source.dart';
import 'package:learning_management/features/videos/data/model/video_model.dart';
import 'package:learning_management/features/videos/domain/entities/video_entity.dart';
import 'package:learning_management/features/videos/domain/repository/video_repository.dart';

class VideoRepositoryImpl implements VideoRepository {
  final VideoDataSource dataSource;

  VideoRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, List<VideoEntity>>> fetchVideos() async {
    {
      try {
        final List<VideoModel> responce = await dataSource.fetchVideos();

        return Right(
          responce.map((e) => VideoEntity.fromModel(model: e)).toList(),
        );
      } catch (e) {
        return Left(e is Failure ? e : UnknownFailure(e.toString()));
      }
    }
  }
}
