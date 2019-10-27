import 'package:email_validator/email_validator.dart';

mixin GGValidators {
  String emptyValidator(String value, {String errorText = 'Campo Obrigatório'}) {
    return value.isEmpty ? errorText : null;
  }

  String emailValidator(String value, {String errorText = 'E-mail Inválido'}) {
    return !EmailValidator.validate(value) ? errorText : null;
  }
}