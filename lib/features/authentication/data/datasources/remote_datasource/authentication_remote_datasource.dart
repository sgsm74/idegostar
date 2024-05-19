import 'package:dio/dio.dart';
import 'package:idegostar/core/errors/errors.dart';
import 'package:idegostar/core/services/http_service.dart';
import 'package:idegostar/core/utils/ok.dart';

abstract class AuthenticationRemoteDataSource {
  Future<OK> login(String userName, String password);
  Future<OK> singup(
    String firstName,
    String lastName,
    String nationalCode,
    String password,
  );
}

class AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  const AuthenticationRemoteDataSourceImpl({required this.service});
  final HTTPService service;

  @override
  Future<OK> login(String userName, String password) async {
    try {
      await service.postData('/login', data: {
        'national_code': userName,
        'password': password,
      });
      return OK();
    } on DioException catch (e) {
      throw ServerException(message: e.message ?? '');
    }
  }

  @override
  Future<OK> singup(
    String firstName,
    String lastName,
    String nationalCode,
    String password,
  ) async {
    try {
      await service.postData('/signup', data: {
        'first_name': firstName,
        'last_name': lastName,
        'national_code': nationalCode,
        'password': password,
      });
      return OK();
    } on DioException catch (e) {
      throw ServerException(message: e.message ?? '');
    }
  }
}
