import 'package:dartz/dartz.dart';
import 'package:idegostar/core/errors/errors.dart';
import 'package:idegostar/core/utils/ok.dart';
import 'package:idegostar/features/authentication/data/datasources/remote_datasource/authentication_remote_datasource.dart';
import 'package:idegostar/features/authentication/domain/entities/login_data_entity.dart';
import 'package:idegostar/features/authentication/domain/entities/signup_data_entity.dart';
import 'package:idegostar/features/authentication/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  const AuthenticationRepositoryImpl({
    required this.authenticationRemoteDataSource,
  });

  final AuthenticationRemoteDataSource authenticationRemoteDataSource;

  @override
  Future<Either<Failure, OK>> login(LoginDataEntity loginData) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, OK>> singup(SignUpDataEntity signUpData) {
    // TODO: implement singup
    throw UnimplementedError();
  }
}
