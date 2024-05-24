import 'package:dio/dio.dart';

abstract class BaseApiProvider{
  late Dio dio;

  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
}