import 'package:equatable/equatable.dart';

class LoginDataEntity extends Equatable {
  const LoginDataEntity({
    required this.userName,
    required this.password,
  });

  final String userName;
  final String password;

  @override
  List<Object?> get props => [userName, password];
}

extension CustomLoginDataEntity on LoginDataEntity {
  Map<String, dynamic> toJSon() {
    return {
      'national_code': userName,
      'password': password,
    };
  }
}
