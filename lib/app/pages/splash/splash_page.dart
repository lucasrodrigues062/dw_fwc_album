import 'package:dw_fwc_album/app/core/ui/helpers/loader.dart';
import 'package:dw_fwc_album/app/core/ui/helpers/messages.dart';
import 'package:dw_fwc_album/app/core/ui/styles/button_styles.dart';
import 'package:dw_fwc_album/app/core/ui/styles/colors_app.dart';
import 'package:dw_fwc_album/app/core/ui/styles/text_styles.dart';
import 'package:dw_fwc_album/app/core/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with Loader<SplashPage>, Messages<SplashPage> {
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
                    onPressed: () {},
                    style: context.buttonStyles.yellowbutton,
                    label: 'Acessar',
                    labelStyle:
                        context.texStyles.textSecondaryExtraBoldPrimaryColor),
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
