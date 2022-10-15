import 'package:dw_fwc_album/app/core/ui/helpers/loader.dart';
import 'package:dw_fwc_album/app/core/ui/helpers/messages.dart';
import 'package:dw_fwc_album/app/pages/auth/register/register_page.dart';
import 'package:dw_fwc_album/app/pages/auth/register/view/register_view.dart';
import 'package:flutter/material.dart';

abstract class RegisterViewImpl extends State<RegisterPage>
    with Messages<RegisterPage>, Loader<RegisterPage>
    implements RegisterView {
  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  @override
  void registerError([String? message]) {
    hideLoader();
    showError(message ?? 'Erro ao registrar usuario');
  }

  @override
  void registerSuccess() {
    hideLoader();
    showSuccess('Usuario cadastrado com sucesso');
    Navigator.of(context).pop();
  }
}
