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

extension CustomSignUpDataEntity on SignUpDataEntity {
  Map<String, dynamic> toJSon() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'national_code': nationalCode,
      'password': password,
    };
  }
}
