
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

abstract class Service {
  final Dio _dio;

  @protected Dio get dio => _dio;

  Service(this._dio);
}