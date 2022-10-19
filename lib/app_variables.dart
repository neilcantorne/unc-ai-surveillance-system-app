import 'package:dio/dio.dart';
import 'package:unc_ai_surveillance_system_app/device.dart';

class AppVariables {
  final Dio httpClient;
  final Device device;

  AppVariables._(this.httpClient, this.device);

  static Future<AppVariables> get variables async {
    final options = BaseOptions(
        baseUrl: 'http://127.0.0.1:8080',
        connectTimeout: 5000,
        receiveTimeout: 3000,
        contentType: "application/json");

    final httpClient = Dio(options);
    final device = await Device.currentDevice;

    return AppVariables._(httpClient, device);
  }
}
