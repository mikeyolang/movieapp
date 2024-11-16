// Service for handling http services

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../model/config.dart';

class HTTPService {
  final dio = Dio();
  final GetIt getIt = GetIt.instance;

  String? base_url;
  String? api_key;

  HTTPService() {
    AppConfig config = getIt.get<AppConfig>();
    base_url = config.BASE_API_URL;
    api_key = config.API_KEY;
  }
  Future<Response?> get(String path, {Map<String, dynamic>? query}) async {
    try {
      String url = '$base_url$path';
      Map<String, dynamic> query0 = {
        'api_key': api_key,
        'language': 'en-US',
      };
      if (query != null) {
        query0.addAll(query);
      }
      return await dio.get(url, queryParameters: query0);
    } on DioException catch (e) {
      print("Unable to Get");
      print("Error: $e");
      return null;
    }
  }
}
