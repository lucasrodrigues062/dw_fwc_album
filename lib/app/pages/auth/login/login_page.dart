import 'package:dw_fwc_album/app/core/ui/styles/button_styles.dart';
import 'package:dw_fwc_album/app/core/ui/styles/colors_app.dart';
import 'package:dw_fwc_album/app/core/ui/styles/text_styles.dart';
import 'package:dw_fwc_album/app/core/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: Form(
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
                          style: context.texStyles.titleWhite,
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        label: Text('E-mail'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        label: Text('Senha'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0),
                      child: Text(
                        'Esqueceu a senha?',
                        style: context.texStyles.textSecondaryFontMedium
                            .copyWith(
                                color: context.colors.yellow, fontSize: 14),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Button(
                        width: MediaQuery.of(context).size.width * .9,
                        onPressed: () {},
                        style: context.buttonStyles.yellowButton,
                        label: 'Entrar',
                        labelStyle: context
                            .texStyles.textSecondaryExtraBoldPrimaryColor),
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
                            style: context.texStyles.textSecondaryFontMedium
                                .copyWith(
                              color: context.colors.yellow,
                            ),
                          ),
                        ],
                      ),
                      style: context.texStyles.textSecondaryFontMedium
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
