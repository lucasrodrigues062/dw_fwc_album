import 'package:dw_fwc_album/app/core/theme/theme_config.dart';
import 'package:dw_fwc_album/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class FwcAlbumApp extends StatelessWidget {
  const FwcAlbumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fifa World Cup Album',
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      routes: {
        '/': (context) => const SplashPage(),
      },
    );
  }
}
