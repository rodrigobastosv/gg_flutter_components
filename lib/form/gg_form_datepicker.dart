import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class GGFormDatePicker extends StatelessWidget {
  GGFormDatePicker({
      @required this.format,
      this.decoration,
      this.initialDate,
      this.labelText,
      this.onSaved,
      this.validator,
  }) : assert(format != null);

  final DateFormat format;
  final InputDecoration decoration;
  final DateTime initialDate;
  final String labelText;
  final TextEditingController controller = TextEditingController();
  final FormFieldSetter<DateTime> onSaved;
  final FormFieldValidator<DateTime> validator;

  @override
  Widget build(BuildContext context) {
    controller.text = initialDate != null ? format.format(initialDate) : '';
    return DateTimeField(
      decoration: decoration ?? InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(Icons.date_range),
        border: OutlineInputBorder(),
      ),
      controller: controller,
      onSaved: onSaved,
      validator: validator,
      format: format,
      onShowPicker: (context, currentValue) {
        return showDatePicker(
            context: context,
            firstDate: DateTime(1900),
            initialDate: initialDate ?? DateTime.now(),
            lastDate: DateTime(2100));
      },
    );
  }
}