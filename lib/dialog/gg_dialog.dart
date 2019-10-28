import 'package:flutter/material.dart';

class GGDialog {
  static void show(BuildContext context, Widget dialog) {
    showDialog(
      context: context,
      builder: (BuildContext context) => dialog,
    );
  }
}