part of 'authentication_bloc.dart';

sealed class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

final class AuthenticationInitial extends AuthenticationState {}

final class AuthenticationLoadingState extends AuthenticationState {}

final class AuthenticationErrorState extends AuthenticationState {
  const AuthenticationErrorState({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}

final class LoginSuccessfullState extends AuthenticationState {}

final class SignupSuccessfullState extends AuthenticationState {}
