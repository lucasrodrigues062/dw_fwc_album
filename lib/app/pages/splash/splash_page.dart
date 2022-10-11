import 'package:dw_fwc_album/app/core/ui/helpers/loader.dart';
import 'package:dw_fwc_album/app/core/ui/helpers/messages.dart';
import 'package:dw_fwc_album/app/core/ui/styles/button_styles.dart';
import 'package:dw_fwc_album/app/core/ui/widgets/button.dart';
import 'package:dw_fwc_album/app/core/ui/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:dw_fwc_album/app/core/ui/styles/text_styles.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with Loader<SplashPage>, Messages<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Splash Page')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                showLoader();
                await Future.delayed(const Duration(seconds: 2));
                hideLoader();
              },
              style: ButtonStyles.instance.yellowbutton,
              child: const Text('salvar'),
            ),
            OutlinedButton(
              onPressed: () {
                showError('erro no butao');
              },
              style: ButtonStyles.instance.yellowOutlinebutton,
              child: const Text('salvar'),
            ),
            const TextField(),
            Button(
              onPressed: () {
                showSuccess('info');
              },
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
