import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:idegostar/core/errors/errors.dart';
import 'package:idegostar/core/usecase/usecase.dart';
import 'package:idegostar/core/utils/ok.dart';
import 'package:idegostar/features/authentication/domain/entities/login_data_entity.dart';
import 'package:idegostar/features/authentication/domain/repositories/authentication_repository.dart';

class LoginUseCase implements UseCase<OK, LoginParams> {
  LoginUseCase({required this.repository});

  final AuthenticationRepository repository;

  @override
  Future<Either<Failure, OK>> call(LoginParams params) {
    return repository.login(params.loginData);
  }
}

class LoginParams extends Equatable {
  const LoginParams({
    required this.loginData,
  });

  final LoginDataEntity loginData;

  @override
  List<Object?> get props => [loginData];
}
