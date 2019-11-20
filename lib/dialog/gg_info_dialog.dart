import 'package:flutter/material.dart';
import 'package:ndialog/ndialog.dart';

class GGInfoDialog extends StatelessWidget {
  GGInfoDialog(
      {@required this.title,
        @required this.text})
      : assert(title != null),
        assert(text != null);

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return NAlertDialog(
      dialogStyle: DialogStyle(
        borderRadius: BorderRadius.circular(16),
        titlePadding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
        contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
      ),
      blur: 4,
      title: Text(title),
      content: Text(text),
      actions: <Widget>[
        FlatButton(
          child: const Text('OK'),
          color: Theme.of(context).primaryColor,
          shape: ContinuousRectangleBorder(
            side: BorderSide.none,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}