import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:dio/dio.dart';

final baseUrl = dotenv.get('URI');
final dioInstance = Dio(BaseOptions(baseUrl: baseUrl));
