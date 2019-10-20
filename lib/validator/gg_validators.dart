mixin GGValidators {
  String emptyValidator({String value, String errorText = 'Campo Obrigatório'}) {
    return value.isEmpty ? errorText : null;
  }
}