import 'package:flutter/material.dart';

class GGOutlinedTextFormField extends StatelessWidget {
  GGOutlinedTextFormField(
      {@required this.labelText,
      this.initialValue,
      this.onSaved,
      this.autofocus,
      this.validator,
      this.keyboardType,
      this.textInputAction,
      this.focusNode,
      this.onEditingComplete,
      this.minLines,
      this.maxLines})
      : assert(labelText != null && labelText != '');

  final String labelText;
  final bool autofocus;
  final String initialValue;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final FocusNode focusNode;
  final VoidCallback onEditingComplete;
  final int minLines;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      autofocus: autofocus,
      validator: validator,
      onEditingComplete: onEditingComplete,
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
