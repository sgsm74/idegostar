import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:idegostar/core/errors/errors.dart';
import 'package:idegostar/core/usecase/usecase.dart';
import 'package:idegostar/core/utils/ok.dart';
import 'package:idegostar/features/authentication/domain/repositories/authentication_repository.dart';

class LoginUseCase implements UseCase<OK, LoginParams> {
  LoginUseCase({required this.repository});

  final AuthenticationRepository repository;

  @override
  Future<Either<Failure, OK>> call(LoginParams params) {
    return repository.login(params.username, params.password);
  }
}

class LoginParams extends Equatable {
  const LoginParams({
    required this.username,
    required this.password,
  });

  final String username;
  final String password;

  @override
  List<Object?> get props => [username, password];
}
