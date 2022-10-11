import 'package:dw_fwc_album/app/core/styles/button_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.black),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      child: Scaffold(
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
            ],
          ),
        ),
      ),
    );
  }
}
