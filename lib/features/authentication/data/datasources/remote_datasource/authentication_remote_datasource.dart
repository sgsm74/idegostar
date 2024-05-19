import 'package:dio/dio.dart';
import 'package:idegostar/core/errors/errors.dart';
import 'package:idegostar/core/services/http_service.dart';
import 'package:idegostar/core/utils/ok.dart';
import 'package:idegostar/features/authentication/domain/entities/login_data_entity.dart';
import 'package:idegostar/features/authentication/domain/entities/signup_data_entity.dart';

abstract class AuthenticationRemoteDataSource {
  Future<OK> login(LoginDataEntity loginData);
  Future<OK> singup(SignUpDataEntity signUpData);
}

class AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  const AuthenticationRemoteDataSourceImpl({required this.service});
  final HTTPService service;

  @override
  Future<OK> login(LoginDataEntity loginData) async {
    try {
      await service.postData('/login', data: loginData.toJSon());
      return OK();
    } on DioException catch (e) {
      throw ServerException(message: e.message ?? '');
    }
  }

  @override
  Future<OK> singup(SignUpDataEntity signUpData) async {
    try {
      await service.postData(
        '/signup',
        data: signUpData.toJSon(),
      );
      return OK();
    } on DioException catch (e) {
      throw ServerException(message: e.message ?? '');
    }
  }
}
