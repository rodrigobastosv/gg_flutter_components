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

    if (!EmailValidator.validate(value)) {
      return errorText;
    }
    return null;
  }

  String emailValidator(String value, {String errorText = 'E-mail Inválido'}) {
    return !EmailValidator.validate(value) ? errorText : null;
  }
}