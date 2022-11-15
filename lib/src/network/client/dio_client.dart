import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:tenor_api_service/src/parser/tenor_response_parser.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class DioClient {
  String injectBaseUrl();

  late final Dio dio;

  DioClient() {
    dio = Dio(BaseOptions(
      baseUrl: injectBaseUrl(),
    ))
      ..interceptors.add(PrettyDioLogger(
        requestBody: kDebugMode,
        requestHeader: kDebugMode,
        responseBody: kDebugMode,
      ));
  }
}

extension DioResponse on Future<Response<dynamic>> {
  Future<T> execute<T>() async {
    try {
      final response = await this;
      final statusCode = response.statusCode ?? -1;
      if (statusCode >= 200 && statusCode <= 300) {
        if (response.data != null) {
          return Future.value(TenorResponseParser<T>().parse(response.data));
        } else {
          return Future.error('Something went wrong');
        }
      } else {
        return Future.error(response.data ?? 'Something went wrong');
      }
    } catch (e, s) {
      print(e);
      print(s);
      return Future.error(e);
    }
  }
}
