import 'package:dw_fwc_album/app/core/ui/styles/button_styles.dart';
import 'package:dw_fwc_album/app/core/ui/styles/colors_app.dart';
import 'package:dw_fwc_album/app/core/ui/styles/text_styles.dart';
import 'package:dw_fwc_album/app/core/ui/widgets/button.dart';
import 'package:dw_fwc_album/app/pages/splash/presenter/splash_presenter.dart';
import 'package:dw_fwc_album/app/pages/splash/view/splash_view_impl.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final SplashPresenter presenter;

  const SplashPage({super.key, required this.presenter});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends SplashViewImpl {
  @override
  Widget build(BuildContext context) {
    final double screenHeigt = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_splash.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  top: screenHeigt * .08,
                ),
                child: Image.asset(
                  'assets/images/fifa_logo.png',
                  height: screenHeigt * .25,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: screenHeigt * .19),
                child: Button(
                    width: screenHeigt * .9,
                    onPressed: () {
                      widget.presenter.checkLogin();
                    },
                    style: context.buttonStyles.yellowButton,
                    label: 'Acessar',
                    labelStyle:
                        context.textStyles.textSecondaryExtraBoldPrimaryColor),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset('assets/images/bandeiras.png')),
            )
          ],
        ),
      ),
    );
  }
}
