import 'package:email_validator/email_validator.dart';

mixin GGValidators {
  String emptyValidator(String value, {String errorText = 'Campo Obrigatório'}) {
    return value.isEmpty ? errorText : null;
  }

  String requiredEmailValidator(String value, {String errorText = 'E-mail Inválido'}) {
    final emptyMessage = emptyValidator(value);
    if (emptyMessage != null) {
      return emptyMessage;
    }

    return !EmailValidator.validate(value) ? errorText : null;
  }

  String emailValidator(String value, {String errorText = 'E-mail Inválido'}) {
    if (value == null || value == '') {
      return null;
    }
    return !EmailValidator.validate(value) ? errorText : null;
  }
}