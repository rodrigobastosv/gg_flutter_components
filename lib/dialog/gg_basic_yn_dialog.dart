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
          child: const Text('Não'),
          color: Colors.grey[200],
          shape: ContinuousRectangleBorder(
            side: BorderSide.none,
          ),
          onPressed: () async {
            if (onClickNo != null) {
              onClickNo();
            } else {
              Navigator.of(context).pop();
            }
          },
        ),
        FlatButton(
          child: const Text('Sim'),
          color: Colors.red[600],
          textColor: Colors.white,
          shape: ContinuousRectangleBorder(
            side: BorderSide.none,
          ),
          onPressed: () async {
            Navigator.of(context).pop();
            onClickYes();
          },
        )
      ],
    );
  }
}