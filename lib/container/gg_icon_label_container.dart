import 'package:flutter/material.dart';

class GGIconLabelContainer extends StatelessWidget {
  const GGIconLabelContainer({
    this.width,
    this.height,
    this.borderRadius = 20,
    this.borderWidth = 2,
    this.padding,
    this.color,
    this.backgroundColor = Colors.transparent,
    this.withShadow = false,
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
  final Color backgroundColor;
  final bool withShadow;
  final Icon icon;
  final Widget text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Material(
      elevation: withShadow ? 3 : 0,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: color ?? theme.primaryColor,
          width: borderWidth,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: InkWell(
        onTap: onTap,
        splashColor: color ?? theme.primaryColor,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Container(
          padding: padding,
          width: width,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              icon,
              const SizedBox(height: 4),
              text,
            ],
          ),
        ),
      ),
    );
  }
}