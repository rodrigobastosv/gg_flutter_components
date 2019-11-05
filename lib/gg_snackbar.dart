import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class GGSnackbar {
  GGSnackbar.info({
    this.title,
    @required this.message,
    @required this.context,
  })  : assert(message != null),
        assert(context != null) {
    backgroundColor = Colors.grey[850];
    foregroundColor = Colors.white;
    iconData = Icons.info_outline;

    _buildSnackbar();
  }

  GGSnackbar.success({
    this.title,
    @required this.message,
    @required this.context,
  })  : assert(message != null),
        assert(context != null) {
    backgroundColor = Colors.green[700];
    foregroundColor = Colors.white;
    iconData = Icons.done;

    _buildSnackbar();
  }

  GGSnackbar.warning({
    this.title,
    @required this.message,
    @required this.context,
  })  : assert(message != null),
        assert(context != null) {
    backgroundColor = Colors.yellow[800];
    foregroundColor = Colors.black;
    iconData = Icons.warning;

    _buildSnackbar();
  }

  GGSnackbar.error({
    this.title,
    @required this.message,
    @required this.context,
  })  : assert(message != null),
        assert(context != null) {
    backgroundColor = Colors.red[600];
    foregroundColor = Colors.white;
    iconData = Icons.error_outline;

    _buildSnackbar();
  }

  final String title;
  final String message;
  final BuildContext context;

  Color backgroundColor;
  Color foregroundColor;
  IconData iconData;

  void _buildSnackbar() {
    Flushbar<Object>(
      icon: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Icon(
          iconData,
          color: foregroundColor,
          size: 36,
        ),
      ),
      titleText: title != null
          ? Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                title,
                style: TextStyle(
                  color: foregroundColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          : null,
      messageText: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Text(
          message,
          style: TextStyle(color: foregroundColor),
        ),
      ),
      backgroundColor: backgroundColor,
      duration: const Duration(seconds: 10),
      flushbarStyle: FlushbarStyle.FLOATING,
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      margin: const EdgeInsets.all(8.0),
      borderRadius: 12.0,
    ).show(context);
  }
}