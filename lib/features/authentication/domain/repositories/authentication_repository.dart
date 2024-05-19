import 'package:dartz/dartz.dart';
import 'package:idegostar/core/errors/errors.dart';
import 'package:idegostar/core/utils/ok.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, OK>> login(String username, String password);
  Future<Either<Failure, OK>> singup(
    String firstName,
    String lastName,
    String nationalCode,
    String password,
  );
}
