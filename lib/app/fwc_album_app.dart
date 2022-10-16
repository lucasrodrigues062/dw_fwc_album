import 'package:dw_fwc_album/app/core/rest/custom_dio.dart';
import 'package:dw_fwc_album/app/core/theme/theme_config.dart';
import 'package:dw_fwc_album/app/core/ui/global/global_context.dart';
import 'package:dw_fwc_album/app/core/ui/global/global_context_impl.dart';
import 'package:dw_fwc_album/app/pages/auth/login/login_route.dart';
import 'package:dw_fwc_album/app/pages/auth/register/register_route.dart';
import 'package:dw_fwc_album/app/pages/home/home_route.dart';
import 'package:dw_fwc_album/app/pages/my_stickers/my_stickers_page.dart';
import 'package:dw_fwc_album/app/pages/splash/splash_route.dart';
import 'package:dw_fwc_album/app/repository/auth/auth_repository.dart';
import 'package:dw_fwc_album/app/repository/auth/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class FwcAlbumApp extends StatelessWidget {
  FwcAlbumApp({Key? key}) : super(key: key);

  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        Bind.lazySingleton<CustomDio>((i) => CustomDio()),
        Bind.lazySingleton<AuthRepository>((i) => AuthRepositoryImpl(dio: i())),
        Bind.lazySingleton<GlobalContext>((i) =>
            GlobalContextImpl(navigatorKey: navigatorKey, authRepository: i()))
      ],
      child: MaterialApp(
        title: 'Fifa World Cup Album',
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        theme: ThemeConfig.theme,
        routes: {
          '/': (context) => const SplashRoute(),
          '/auth/login': (context) => const LoginRoute(),
          '/auth/register': (context) => const RegisterRoute(),
          '/home': (context) => const HomeRoute(),
          '/my-stickers': (_) => const MyStickersPage(),
        },
      ),
    );
  }
}
