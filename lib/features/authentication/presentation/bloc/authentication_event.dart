part of 'authentication_bloc.dart';

sealed class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

final class SignUpEvent extends AuthenticationEvent {
  const SignUpEvent({
    required this.signUpData,
  });
  final SignUpDataEntity signUpData;

  @override
  List<Object> get props => [signUpData];
}

final class LoginEvent extends AuthenticationEvent {
  const LoginEvent({
    required this.loginData,
  });

  final LoginDataEntity loginData;

  @override
  List<Object> get props => [loginData];
}
