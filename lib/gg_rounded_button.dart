import 'package:flutter/material.dart';

class GGRoundedButton extends StatelessWidget {
  const GGRoundedButton({
    this.color,
    this.onPressed,
    this.child,
    this.padding,
    this.borderRadius = 12,
  });

  final Color color;
  final Function onPressed;
  final Widget child;
  final EdgeInsets padding;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return RaisedButton(
      onPressed: onPressed,
      color: color ?? theme.primaryColor,

      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      padding: padding,
      child: child,
    );
  }
}
