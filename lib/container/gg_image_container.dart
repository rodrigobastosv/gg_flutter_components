import 'dart:io';

import 'package:flutter/material.dart';

class GGImageContainer extends StatelessWidget {
  const GGImageContainer({this.image, this.radius = 60});

  final File image;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: FileImage(image),
    );
  }
}