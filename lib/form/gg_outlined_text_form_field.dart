import 'package:flutter/material.dart';

class GGOutlinedTextFormField extends StatelessWidget {
  GGOutlinedTextFormField(
      {@required this.labelText,
      this.initialValue,
      this.onSaved,
      this.validator,
      this.keyboardType,
      this.textInputAction,
      this.focusNode,
      this.minLines,
      this.maxLines})
      : assert(labelText != null && labelText != '');

  final String labelText;
  final String initialValue;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final FocusNode focusNode;
  final int minLines;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      focusNode: focusNode,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
      initialValue: initialValue,
      minLines: minLines,
      maxLines: maxLines,
    );
  }
}
