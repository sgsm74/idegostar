import 'package:dartz/dartz.dart';
import 'package:idegostar/core/errors/errors.dart';
import 'package:idegostar/core/utils/ok.dart';
import 'package:idegostar/features/authentication/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  @override
  Future<Either<Failure, OK>> login(String username, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, OK>> singup(
      String firstName, String lastName, String nationalCode, String password) {
    // TODO: implement singup
    throw UnimplementedError();
  }
}
