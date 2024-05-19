part of 'authentication_bloc.dart';

sealed class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

final class SignUpEvent extends AuthenticationEvent {
  const SignUpEvent({
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
  List<Object> get props => [nationalCode, password];
}

final class LoginEvent extends AuthenticationEvent {
  const LoginEvent({
    required this.username,
    required this.password,
  });

  final String username;
  final String password;

  @override
  List<Object> get props => [username, password];
}
