import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:idegostar/core/errors/errors.dart';
import 'package:idegostar/core/usecase/usecase.dart';
import 'package:idegostar/core/utils/ok.dart';
import 'package:idegostar/features/authentication/domain/repositories/authentication_repository.dart';

class SignUpUseCase implements UseCase<OK, SignUpParams> {
  SignUpUseCase({required this.repository});

  final AuthenticationRepository repository;

  @override
  Future<Either<Failure, OK>> call(SignUpParams params) {
    return repository.singup(
      params.firstName,
      params.lastName,
      params.nationalCode,
      params.password,
    );
  }
}

class SignUpParams extends Equatable {
  const SignUpParams({
    required this.firstName,
    required this.lastName,
    required this.nationalCode,
    required this.password,
  });

  final String firstName;
  final String lastName;
  final String nationalCode;
  final String password;

  @override
  List<Object?> get props => [nationalCode, password];
}
