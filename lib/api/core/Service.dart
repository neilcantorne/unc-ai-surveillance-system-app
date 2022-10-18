
import 'package:dio/dio.dart';

abstract class Service {
  final Dio _dio;

  Service(this._dio);
}