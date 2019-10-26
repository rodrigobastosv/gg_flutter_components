import 'package:flutter/material.dart';

class GGIconLabelContainer extends StatelessWidget {
  const GGIconLabelContainer({
    this.width,
    this.height,
    this.borderRadius = 20,
    this.borderWidth = 2,
    this.padding,
    this.color,
    this.icon,
    this.text,
    this.onTap,
  })  : assert(icon != null),
        assert(text != null);

  final double width;
  final double height;
  final double borderRadius;
  final double borderWidth;
  final EdgeInsets padding;
  final Color color;
  final Icon icon;
  final Text text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      splashColor: color ?? theme.primaryColor,
      child: Container(
        padding: padding,
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: color ?? theme.primaryColor, width: borderWidth),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            icon,
            text,
          ],
        ),
      ),
    );
  }
}
