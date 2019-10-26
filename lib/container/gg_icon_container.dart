import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  IconContainer({this.icon, this.size = 60});

  final IconData icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size),
    );
  }
}