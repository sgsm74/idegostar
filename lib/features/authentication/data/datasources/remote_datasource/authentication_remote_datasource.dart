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
  Future<OK> login(String userName, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<OK> singup(
      String firstName, String lastName, String nationalCode, String password) {
    // TODO: implement singup
    throw UnimplementedError();
  }
}
