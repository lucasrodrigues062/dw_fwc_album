// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dw_fwc_album/app/models/register_user_model.dart';
import 'package:dw_fwc_album/app/pages/auth/register/presenter/register_present.dart';
import 'package:dw_fwc_album/app/pages/auth/register/view/register_view.dart';
import 'package:dw_fwc_album/app/repository/auth/auth_repository.dart';

class RegisterPresenterImpl implements RegisterPresenter {
  late final RegisterView _view;

  final AuthRepository authRepository;

  RegisterPresenterImpl({
    required this.authRepository,
  });

  @override
  Future<void> register(
      {required String name,
      required String email,
      required String password,
      required String confirmPassword}) async {
    final registerUserModel = RegisterUserModel(
      name: name,
      password: password,
      email: email,
      confirmPassword: confirmPassword,
    );
    try {
      await authRepository.register(registerUserModel);
      _view.registerSuccess();
    } catch (e, s) {
      log(
        'Erro ao cadastrar usuario',
        error: e,
        stackTrace: s,
      );
      _view.registerError();
    }
  }

  @override
  set view(RegisterView view) => _view = view;
}
