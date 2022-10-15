import 'dart:developer';

import 'package:dw_fwc_album/app/core/exceptions/unauthorized_exception.dart';
import 'package:dw_fwc_album/app/services/login/login_service.dart';
import 'package:dw_fwc_album/app/pages/auth/login/presenter/login_presenter.dart';
import 'package:dw_fwc_album/app/pages/auth/login/view/login_view.dart';

class LoginPresenterImpl extends LoginPresenter {
  final LoginService loginService;
  late final LoginView _view;

  LoginPresenterImpl({required this.loginService});
  @override
  Future<void> login(String email, String password) async {
    
    try {
      await loginService.execute(email: email, password: password);
      _view.success();
    } on UnauthorizedException {
      _view.error('Usuario ou senha invalidos');
    } catch (e, s) {
      log('Erro ao realizar login', error: e, stackTrace: s);
      _view.error('Erro ao realizar login');
    }
  }

  @override
  set view(LoginView view) => _view = view;
}
