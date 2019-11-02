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
    this.withShadow,
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
          color: backgroundColor,
          border: Border.all(
            color: color ?? theme.primaryColor,
            width: borderWidth,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: withShadow
              ? [
                  BoxShadow(
                    offset: const Offset(0, 1),
                    color: Colors.grey,
                  ),
                ]
              : null,
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
