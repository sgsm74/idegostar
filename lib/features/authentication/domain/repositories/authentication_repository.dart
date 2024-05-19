import 'package:dartz/dartz.dart';
import 'package:idegostar/core/errors/errors.dart';
import 'package:idegostar/core/utils/ok.dart';
import 'package:idegostar/features/authentication/domain/entities/login_data_entity.dart';
import 'package:idegostar/features/authentication/domain/entities/signup_data_entity.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, OK>> login(LoginDataEntity loginData);
  Future<Either<Failure, OK>> singup(SignUpDataEntity signUpData);
}
