import 'package:dw_fwc_album/app/core/styles/button_styles.dart';
import 'package:dw_fwc_album/app/core/styles/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:dw_fwc_album/app/core/styles/text_styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Splash Page')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyles.instance.yellowbutton,
              child: Text('salvar'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyles.instance.yellowOutlinebutton,
              child: Text('salvar'),
            ),
            TextField()
          ],
        ),
      ),
    );
  }
}
