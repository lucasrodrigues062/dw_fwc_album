class TextStyles {
  // Class singleton

  //guarda a instancia da classe
  static TextStyles? _instance;
  //impede a instanciacao
  TextStyles._();

  static TextStyles get instance {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get primaryFont => 'Poppins';
  String get secondaryFont => 'MPlus1P';
}
