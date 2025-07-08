import 'package:http/http.dart' as http;
import 'package:learning_management/features/modules/data/data_sources/module_data_source.dart';
import 'package:learning_management/features/modules/data/repository/module_repository_impl.dart';
import 'package:learning_management/features/modules/domain/repository/module_repository.dart';
import 'package:learning_management/features/subject/data/data_source/subject_data_source.dart';
import 'package:learning_management/features/subject/data/repository/subject_repository_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:learning_management/features/subject/domain/repository/subject_repository.dart';
import 'package:learning_management/features/videos/data/data_source/video_data_source.dart';
import 'package:learning_management/features/videos/data/repository/video_repository_impl.dart';
import 'package:learning_management/features/videos/domain/repository/video_repository.dart';

final getIt = GetIt.instance;
Future<void> setupServiceLocator() async {
  final httpClient = http.Client();

  //subject
  final remoteDataSource = SubjectRemoteDataSourceImpl(httpClient);
  getIt.registerSingleton<SubjectRemoteDataSource>(remoteDataSource);

  final subjectRepository = SubjectRepositoryImpl(remoteDataSource);
  getIt.registerSingleton<SubjectRepository>(subjectRepository);

  //module

  final dataSource = ModuleDataSourceImpl(httpClient);
  getIt.registerSingleton<ModuleDataSource>(dataSource);

  final moduleRepository = ModuleRepositoryImpl(dataSource);
  getIt.registerSingleton<ModuleRepository>(moduleRepository);

  //videos
  final videoDataSource = VideoDataSourceImpl(httpClient);
  getIt.registerSingleton<VideoDataSource>(videoDataSource);

  final videoRepository = VideoRepositoryImpl(videoDataSource);
  getIt.registerSingleton<VideoRepository>(videoRepository);
}
