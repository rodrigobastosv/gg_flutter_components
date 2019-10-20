import 'package:flutter/material.dart';

class GGRoundedButton extends StatelessWidget {
  const GGRoundedButton({
    this.color,
    this.borderColor,
    this.onPressed,
    this.child,
    this.padding,
    this.borderColoredOnly = false,
    this.borderRadius = 12,
  });

  final Color color;
  final Color borderColor;
  final Function onPressed;
  final Widget child;
  final EdgeInsets padding;
  final bool borderColoredOnly;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return RaisedButton(
      onPressed: onPressed,
      color: _getColor(context),
      shape: Border.all(
        color: borderColor ?? theme.primaryColor,
      ),
      padding: padding,
      child: child,
    );
  }

  Color _getColor(BuildContext context) {
    ThemeData theme = Theme.of(context);

    if (borderColoredOnly) {
      return theme.scaffoldBackgroundColor;
    } else {
      return color ?? theme.primaryColor;
    }
  }
}
