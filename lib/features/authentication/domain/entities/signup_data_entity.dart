import 'package:equatable/equatable.dart';

class SignUpDataEntity extends Equatable {
  const SignUpDataEntity({
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
