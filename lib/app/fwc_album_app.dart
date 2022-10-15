import 'package:dw_fwc_album/app/core/rest/custom_dio.dart';
import 'package:dw_fwc_album/app/core/theme/theme_config.dart';
import 'package:dw_fwc_album/app/pages/auth/login/login_page.dart';
import 'package:dw_fwc_album/app/pages/auth/register/register_page.dart';
import 'package:dw_fwc_album/app/pages/auth/register/register_route.dart';
import 'package:dw_fwc_album/app/pages/home/home_page.dart';
import 'package:dw_fwc_album/app/pages/splash/splash_route.dart';
import 'package:dw_fwc_album/app/repository/auth/auth_repository.dart';
import 'package:dw_fwc_album/app/repository/auth/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class FwcAlbumApp extends StatelessWidget {
  const FwcAlbumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        Bind.lazySingleton<CustomDio>((i) => CustomDio()),
        Bind.lazySingleton<AuthRepository>((i) => AuthRepositoryImpl(dio: i())),
      ],
      child: MaterialApp(
        title: 'Fifa World Cup Album',
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.theme,
        routes: {
          '/': (context) => const SplashRoute(),
          '/auth/login': (context) => const LoginPage(),
          '/auth/register': (context) => const RegisterRoute(),
          '/home': (context) => const HomePage(),
        },
      ),
    );
  }
}
