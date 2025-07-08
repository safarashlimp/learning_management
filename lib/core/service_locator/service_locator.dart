import 'package:http/http.dart' as http;
import 'package:learning_management/subject/data/data_source/subject_data_source.dart';
import 'package:learning_management/subject/data/repository/subject_repository_impl.dart';
import 'package:learning_management/subject/domain/reository/subject_repository.dart';
import 'package:get_it/get_it.dart';
 
final getIt = GetIt.instance;
Future<void> setupServiceLocator() async {
  final httpClient = http.Client();
  final remoteDataSource = SubjectRemoteDataSourceImpl(httpClient);
  getIt.registerSingleton<SubjectRemoteDataSource>(remoteDataSource);

  final subjectRepository = SubjectRepositoryImpl(remoteDataSource);
  getIt.registerSingleton<SubjectRepository>(subjectRepository);
}
