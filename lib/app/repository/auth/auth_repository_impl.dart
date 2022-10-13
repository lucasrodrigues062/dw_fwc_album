// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dw_fwc_album/app/core/exceptions/repository_exception.dart';
import 'package:dw_fwc_album/app/core/rest/custom_dio.dart';
import 'package:dw_fwc_album/app/models/register_user_model.dart';
import 'package:dw_fwc_album/app/repository/auth/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final CustomDio dio;

  AuthRepositoryImpl({
    required this.dio,
  });

  @override
  Future<String> login({required String email, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<void> register(RegisterUserModel registerModel) async {
    try {
      await dio.unAuth().post(
            'api/register',
            data: registerModel.toJson(),
          );
    } on DioError catch (e, s) {
      log('Erro ao registrar usuario', error: e, stackTrace: s);
      throw RepositoryException(message: 'erro ao registrar usuario');
    }
  }
}
