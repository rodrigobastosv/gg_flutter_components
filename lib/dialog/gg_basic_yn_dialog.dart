import 'package:flutter/material.dart';
import 'package:ndialog/ndialog.dart';

class GGBasicYNDialog extends StatelessWidget {
  GGBasicYNDialog(
      {@required this.title,
      @required this.text,
      @required this.onClickYes,
      this.onClickNo})
      : assert(title != null),
        assert(text != null),
        assert(onClickYes != null);

  final String title;
  final String text;
  final Function onClickYes;
  final Function onClickNo;

  @override
  Widget build(BuildContext context) {
    return NAlertDialog(
      dialogStyle: DialogStyle(titleDivider: true),
      title: Text(title),
      content: Text(text),
      actions: <Widget>[
        FlatButton(
            child: const Text('Não'),
            onPressed: () async {
              if (onClickNo != null) {
                onClickNo();
              } else {
                Navigator.of(context).pop();
              }
            }),
        FlatButton(
          child: const Text('Sim'),
          onPressed: () async {
            Navigator.of(context).pop();
            onClickYes();
          },
        )
      ],
    );
  }
}
