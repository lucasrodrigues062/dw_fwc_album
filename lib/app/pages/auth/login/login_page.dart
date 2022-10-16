import 'package:dw_fwc_album/app/core/ui/styles/button_styles.dart';
import 'package:dw_fwc_album/app/core/ui/styles/colors_app.dart';
import 'package:dw_fwc_album/app/core/ui/styles/text_styles.dart';
import 'package:dw_fwc_album/app/core/ui/widgets/button.dart';
import 'package:dw_fwc_album/app/pages/auth/login/presenter/login_presenter.dart';
import 'package:dw_fwc_album/app/pages/auth/login/view/login_view_impl.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  final LoginPresenter presenter;
  const LoginPage({Key? key, required this.presenter}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends LoginViewImpl {
  final formKey = GlobalKey<FormState>();
  final emailEC = TextEditingController();
  final passwordEC = TextEditingController();

  @override
  void dispose() {
    emailEC.dispose();
    passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: Form(
        key: formKey,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/background_login.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate.fixed(
                  [
                    SizedBox(
                      height: MediaQuery.of(context).size.height *
                          (MediaQuery.of(context).size.width > 350 ? .30 : .25),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Center(
                        child: Text(
                          'Login',
                          style: context.textStyles.titleWhite,
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: emailEC,
                      validator: Validatorless.multiple([
                        Validatorless.required('Obrigatorio'),
                        Validatorless.email('E-mail invalido'),
                      ]),
                      decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        label: Text('E-mail'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordEC,
                      validator: Validatorless.multiple([
                        Validatorless.min(
                            6, "Senha deve conter pelo menos 6 caracteres"),
                        Validatorless.required('Obrigatorio')
                      ]),
                      decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        label: Text('Senha'),
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Text(
                        'Esqueceu a senha?',
                        style: context.textStyles.textSecondaryFontMedium
                            .copyWith(
                                color: context.colors.yellow, fontSize: 14),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Button(
                        width: MediaQuery.of(context).size.width * .9,
                        onPressed: () {
                          //showLoader();
                          final valid =
                              formKey.currentState?.validate() ?? false;

                          if (valid) {
                            showLoader();
                            widget.presenter
                                .login(emailEC.text, passwordEC.text);
                          }
                        },
                        style: context.buttonStyles.yellowButton,
                        label: 'Entrar',
                        labelStyle: context
                            .textStyles.textSecondaryExtraBoldPrimaryColor),
                  ],
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    const Spacer(),
                    Text.rich(
                      TextSpan(
                        text: 'Não possui uma conta? ',
                        children: [
                          TextSpan(
                              text: 'Cadastre-se',
                              style: context.textStyles.textSecondaryFontMedium
                                  .copyWith(
                                color: context.colors.yellow,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.of(context)
                                    .pushNamed('/auth/register')),
                        ],
                      ),
                      style: context.textStyles.textSecondaryFontMedium
                          .copyWith(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
