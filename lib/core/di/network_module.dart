import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../flavors.dart';
import '../utils/date_time_util.dart';

@module
abstract class NetworkModule {
  @Named('base_url')
  @singleton
  String get baseUrl => F.baseUrl;

  @singleton
  Dio dio(
    @Named('base_url') String baseUrl,
  ) {
    var option = BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: DateTimeUtil.fifteenSeconds),
        sendTimeout: const Duration(seconds: DateTimeUtil.fifteenSeconds),
        receiveTimeout: const Duration(seconds: DateTimeUtil.fifteenSeconds),
        headers: {
          'Content-Type': 'application/json',
        },
        queryParameters: {
          "api_key": "c33de0ec803d2fb2d69777cc18e2b5be"
        });

    var dio = Dio(option);

    return dio;
  }
}
