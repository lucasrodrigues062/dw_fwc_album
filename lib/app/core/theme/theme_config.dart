import 'package:dw_fwc_album/app/core/styles/colors_app.dart';
import 'package:dw_fwc_album/app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(18),
    borderSide: BorderSide(
      color: ColorsApp.instance.greyDart,
      width: 1,
    ),
  );

  // private constructor
  ThemeConfig._();

  static final theme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      titleTextStyle: TextStyles.instance.textPrimaryFontBold.copyWith(
        color: Colors.black,
        fontSize: 18,
      ),
      centerTitle: true,
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
    ),
    primaryColor: ColorsApp.instance.primary,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsApp.instance.primary,
      primary: ColorsApp.instance.primary,
      secondary: ColorsApp.instance.secondary,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.all(13),
      labelStyle: TextStyles.instance.labelTextField,
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
      border: _defaultInputBorder,
    ),
  );
}
