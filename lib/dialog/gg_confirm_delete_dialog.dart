import 'package:flutter/material.dart';

import 'gg_basic_yn_dialog.dart';

class GGConfirmDeleteDialog extends StatelessWidget {
  GGConfirmDeleteDialog({
    this.title,
    this.onClickYes
  });

  final String title;
  final Function onClickYes;

  @override
  Widget build(BuildContext context) {
    return GGBasicYNDialog(
      title: title,
      text: 'Esta ação é irreversível. Você tem certeza?',
      onClickYes: onClickYes,
    );
  }
}
