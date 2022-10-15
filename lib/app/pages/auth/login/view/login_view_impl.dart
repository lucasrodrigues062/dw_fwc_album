import 'package:dw_fwc_album/app/core/ui/helpers/loader.dart';
import 'package:dw_fwc_album/app/core/ui/helpers/messages.dart';
import 'package:dw_fwc_album/app/pages/auth/login/login_page.dart';
import 'package:dw_fwc_album/app/pages/auth/login/view/login_view.dart';
import 'package:flutter/material.dart';

abstract class LoginViewImpl extends State<LoginPage>
    with Messages<LoginPage>, Loader<LoginPage>
    implements LoginView {
  @override
  void initState() {
    widget.presenter.view = this;
    super.initState();
  }

  @override
  void error(String message) {
    hideLoader();
    showError(message);
  }

  @override
  void success() {
    hideLoader();
    Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
  }
}
