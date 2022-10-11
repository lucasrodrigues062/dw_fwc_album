import 'package:dw_fwc_album/app/core/ui/styles/colors_app.dart';
import 'package:dw_fwc_album/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ButtonStyles {
  // Class singleton

  //guarda a instancia da classe
  static ButtonStyles? _instance;
  //impede a instanciacao
  ButtonStyles._();

  static ButtonStyles get instance {
    _instance ??= ButtonStyles._();
    return _instance!;
  }

  ButtonStyle get yellowbutton => ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.instance.yellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle: TextStyles.instance.textSecondaryExtraBold.copyWith(
          fontSize: 14,
        ),
      );

  ButtonStyle get yellowOutlinebutton => OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle: TextStyles.instance.textSecondaryExtraBold.copyWith(
          fontSize: 14,
        ),
        side: BorderSide(
          color: ColorsApp.instance.yellow,
        ),
      );

  ButtonStyle get primarybutton => ElevatedButton.styleFrom(
        backgroundColor: ColorsApp.instance.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle: TextStyles.instance.textSecondaryExtraBold.copyWith(
          fontSize: 14,
        ),
      );

  ButtonStyle get primaryYellowOutlinebutton => OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle: TextStyles.instance.textSecondaryExtraBold.copyWith(
          fontSize: 14,
        ),
        side: BorderSide(
          color: ColorsApp.instance.primary,
        ),
      );
}

extension ButtonStylesExtensions on BuildContext {
  ButtonStyles get buttonStyles => ButtonStyles.instance;
}
