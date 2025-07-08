  import 'dart:convert';
  import 'dart:io';
  import 'dart:async';

  import 'package:http/http.dart' as http;
  import 'package:learning_management/core/error/errors.dart';
  import 'package:learning_management/features/subject/data/model/subject_model.dart';

  // adjust import as needed

  abstract class SubjectRemoteDataSource {
    Future<List<SubjectModel>> fetchSubjects();
  }

  class SubjectRemoteDataSourceImpl implements SubjectRemoteDataSource {
    final http.Client client;

    SubjectRemoteDataSourceImpl(this.client);

    final String _baseUrl = 'https://trogon.info/interview/php/api/subjects.php';

    @override
    Future<List<SubjectModel>> fetchSubjects() async {
      try {
        final response = await client.get(Uri.parse(_baseUrl));

        if (response.statusCode == 200) {
          final List<dynamic> jsonList = json.decode(response.body);
          return jsonList.map((json) => SubjectModel.fromJson(json)).toList();
        } else {
          throw UnknownFailure(response.reasonPhrase ?? 'Unknown error');
        }
      } on SocketException {
        throw NoNetworkFailure();
      } on TimeoutException {
        throw ConnectionTimeOutFailure();
      } catch (e) {
        rethrow;
      }
    }
  }
