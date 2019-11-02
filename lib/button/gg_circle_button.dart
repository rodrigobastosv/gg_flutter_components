import 'package:flutter/material.dart';

class GGCircleButton extends StatelessWidget {
  const GGCircleButton({
    this.colorButton,
    this.icon,
    this.colorIcon,
    this.onTap,
  });
  
  final Color colorButton;
  final IconData icon;
  final Color colorIcon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.circle,
      elevation: 1,
      color: colorButton,
      child: InkWell(
        borderRadius: BorderRadius.circular(17),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Icon(
            icon,
            size: 22,
            color: colorIcon,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
