import 'package:flutter/material.dart';
import 'package:gg_flutter_components/form/gg_text_form_field.dart';

class GGTextFormFieldShadowed extends StatelessWidget {
  const GGTextFormFieldShadowed({
    @required this.labelText,
    this.shadowHeight = 59,
    this.shadowBlurRadius = 8,
    this.shadowColor,
    this.shadowOffset,
    this.enabled,
    this.minLines,
    this.maxLines,
    this.keyboardType,
    this.textInputAction,
    this.initialValue,
    this.controller,
    this.focusNode,
    this.validator,
    this.onEditingComplete,
    this.onSaved,
  }) : assert(labelText != null && labelText != '');

  final double shadowHeight;
  final double shadowBlurRadius;
  final Color shadowColor;
  final Offset shadowOffset;
  final String labelText;
  final bool enabled;
  final int minLines;
  final int maxLines;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final String initialValue;
  final TextEditingController controller;
  final FocusNode focusNode;
  final FormFieldValidator<String> validator;
  final VoidCallback onEditingComplete;
  final FormFieldSetter<String> onSaved;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: shadowHeight,
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                blurRadius: shadowBlurRadius,
                color: shadowColor ?? Colors.grey[300],
                offset: shadowOffset ?? Offset(0, 0.4),
              ),
            ],
          ),
        ),
        GGTextFormField(
          labelText: labelText,
          enabled: enabled,
          minLines: minLines,
          maxLines: maxLines,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          initialValue: initialValue,
          controller: controller,
          focusNode: focusNode,
          validator: validator,
          onEditingComplete: onEditingComplete,
          onSaved: onSaved,
        ),
      ],
    );
  }
}
