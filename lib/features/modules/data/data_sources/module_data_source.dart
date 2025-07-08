import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:learning_management/core/error/errors.dart';
import 'package:learning_management/features/modules/data/model/module_model.dart';

abstract class ModuleDataSource {
  Future<List<ModuleModel>> fetchModules();
}

class ModuleDataSourceImpl implements ModuleDataSource {
  final http.Client client;

  ModuleDataSourceImpl(this.client);

  final String _baseUrl = 'https://trogon.info/interview/php/api/modules.php';

  @override
  Future<List<ModuleModel>> fetchModules() async {
    try {
      final response = await client.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body);
        return jsonList.map((json) => ModuleModel.fromJson(json)).toList();
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
