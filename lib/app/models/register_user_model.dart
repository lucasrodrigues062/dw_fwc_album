import 'dart:convert';

class RegisterUserModel {
  final String name;
  final String password;
  final String email;
  final String confirmPassword;

  RegisterUserModel({
    required this.name,
    required this.password,
    required this.email,
    required this.confirmPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'password': password,
      'email': email,
      'password_confirmation': confirmPassword,
    };
  }

  factory RegisterUserModel.fromMap(Map<String, dynamic> map) {
    return RegisterUserModel(
      name: map['name'] as String,
      password: map['password'] as String,
      email: map['email'] as String,
      confirmPassword: map['password_confirmation'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterUserModel.fromJson(String source) =>
      RegisterUserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
