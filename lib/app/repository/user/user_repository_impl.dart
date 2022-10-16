// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dw_fwc_album/app/core/exceptions/repository_exception.dart';
import 'package:dw_fwc_album/app/core/rest/custom_dio.dart';
import 'package:dw_fwc_album/app/models/user_model.dart';
import 'package:dw_fwc_album/app/repository/user/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final CustomDio customDio;
  UserRepositoryImpl({
    required this.customDio,
  });

  @override
  Future<UserModel> getMe() async {
    try {
      final result = await customDio.auth().get('/api/me');
      return UserModel.fromMap(result.data);
    } on DioError catch (e, s) {
      log('Erro ao buscar dados do usuario logado', error: e, stackTrace: s);
      throw RepositoryException(
          message: 'Erro ao buscar dados do usuario logado');
    }
  }
}
