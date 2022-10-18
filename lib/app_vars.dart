import 'package:dio/dio.dart';

class AppVars {
  late final Dio _httpClient;

  AppVars() {
    final options = BaseOptions(
        baseUrl: 'http://127.0.0.1:8080',
        connectTimeout: 5000,
        receiveTimeout: 3000,
        contentType: "application/json");

    _httpClient = Dio(options);
  }

  Dio get httpClient => _httpClient;
}
