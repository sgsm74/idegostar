import 'package:dio/dio.dart';

abstract class HTTPService<T> {
  Future<Response> postData(
    String url, {
    dynamic data,
    Map<String, dynamic>? header,
    Duration? timeout,
  });
}

class DioService implements HTTPService {
  DioService({required this.dio});

  final Dio dio;

  @override
  Future<Response> postData(
    String url, {
    dynamic data,
    Map<String, dynamic>? header,
    Duration? timeout,
  }) {
    return dio.post(
      url,
      data: data,
      options: Options(headers: header, receiveTimeout: timeout),
    );
  }
}
