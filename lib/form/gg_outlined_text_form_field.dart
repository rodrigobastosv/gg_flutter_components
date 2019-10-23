import 'package:flutter/material.dart';

class GGOutlinedTextFormField extends StatelessWidget {
  GGOutlinedTextFormField(
      {@required this.labelText,
      this.onSaved,
      this.validator,
      this.minLines,
      this.maxLines}) : assert(labelText != null && labelText != '');

  final String labelText;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final int minLines;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: validator,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
      minLines: minLines,
      maxLines: maxLines,
    );
  }
}
