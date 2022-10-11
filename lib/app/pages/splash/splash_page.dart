import 'package:dw_fwc_album/app/core/ui/styles/button_styles.dart';
import 'package:dw_fwc_album/app/core/ui/widgets/button.dart';
import 'package:dw_fwc_album/app/core/ui/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:dw_fwc_album/app/core/ui/styles/text_styles.dart';

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
              child: const Text('salvar'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyles.instance.yellowOutlinebutton,
              child: const Text('salvar'),
            ),
            const TextField(),
            Button(
              onPressed: () {},
              style: ButtonStyles.instance.primarybutton,
              label: 'salvar',
              labelStyle: context.texStyles.textPrimaryFontBold,
            ),
            RoundedButton(icon: Icons.add, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
