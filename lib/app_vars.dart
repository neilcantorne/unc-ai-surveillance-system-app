import 'package:dio/dio.dart';
import 'package:unc_ai_surveillance_system_app/device.dart';

class AppVars {
  final Dio httpClient;
  final Device device;

  AppVars._(this.httpClient, this.device);

  static Future<AppVars> get vars async {
    final options = BaseOptions(
        baseUrl: 'http://127.0.0.1:8080',
        connectTimeout: 5000,
        receiveTimeout: 3000,
        contentType: "application/json");

    final httpClient = Dio(options);
    final device = await Device.currentDevice;

    return AppVars._(httpClient, device);
  }
}
