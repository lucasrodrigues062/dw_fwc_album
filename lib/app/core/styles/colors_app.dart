import 'package:flutter/material.dart';

class ColorsApp {
  // Class singleton

  //guarda a instancia da classe
  static ColorsApp? _instance;
  //impede a instanciacao
  ColorsApp._();

  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0XFF791435);
  Color get secondary => const Color(0XFFFDCE50);
  Color get yellow => const Color(0XFFFDCE50);
  Color get grey => const Color(0XFFCCCCCC);
  Color get greyDart => const Color(0XFF999999);
}

extension ColorsAppExtensions on BuildContext {
  ColorsApp get colors => ColorsApp.instance;
}
