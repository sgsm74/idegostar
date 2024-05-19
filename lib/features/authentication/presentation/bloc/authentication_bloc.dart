import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:idegostar/features/authentication/domain/entities/login_data_entity.dart';
import 'package:idegostar/features/authentication/domain/entities/signup_data_entity.dart';
import 'package:idegostar/features/authentication/domain/usecases/login_usecase.dart';
import 'package:idegostar/features/authentication/domain/usecases/signup_usecase.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required this.loginUseCase,
    required this.signUpUseCase,
  }) : super(AuthenticationInitial()) {
    on<AuthenticationEvent>((event, emit) async {
      if (event is LoginEvent) {
        await _onLoginEvent(event, emit);
      } else if (event is SignUpEvent) {
        await _onSignUpEvent(event, emit);
      }
    });
  }
  final LoginUseCase loginUseCase;
  final SignUpUseCase signUpUseCase;

  FutureOr<void> _onLoginEvent(
      LoginEvent event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationLoadingState());
    final result = await loginUseCase(LoginParams(loginData: event.loginData));

    emit(
      result.fold(
        (error) => AuthenticationErrorState(message: error.message),
        (ok) => LoginSuccessfullState(),
      ),
    );
  }

  FutureOr<void> _onSignUpEvent(
      SignUpEvent event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationLoadingState());
    final result =
        await signUpUseCase(SignUpParams(signUpData: event.signUpData));
    emit(
      result.fold(
        (error) => AuthenticationErrorState(message: error.message),
        (ok) => SignupSuccessfullState(),
      ),
    );
  }
}
