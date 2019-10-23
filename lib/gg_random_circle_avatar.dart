import 'package:avataaar_image/avataaar_image.dart';
import 'package:flutter/material.dart';

class GGRandomCircleAvatar extends StatelessWidget {
  GGRandomCircleAvatar(
      {@required this.radius,
      this.backgroundColor = Colors.white,
      this.errorImage = const Icon(Icons.error),
      this.placeholder = const CircularProgressIndicator()})
      : assert(radius != null && radius > 0);

  final double radius;
  final Color backgroundColor;
  final Widget errorImage;
  final Widget placeholder;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
      child: AvataaarImage(
        avatar: Avataaar.random(),
        errorImage: errorImage,
        placeholder: placeholder,
      ),
    );
  }
}
