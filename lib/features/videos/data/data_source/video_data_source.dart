import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:learning_management/core/error/errors.dart';
import 'package:learning_management/features/videos/data/model/video_model.dart';

abstract class VideoDataSource {
  Future<List<VideoModel>> fetchVideos();
}

class VideoDataSourceImpl implements VideoDataSource {
  final http.Client client;

  VideoDataSourceImpl(this.client);

  final String _baseUrl = 'https://trogon.info/interview/php/api/videos.php?module_id=1';

  @override
  Future<List<VideoModel>> fetchVideos()async {
    try {
      final response = await client.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body);
        return jsonList.map((json) => VideoModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load videos'); 
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
