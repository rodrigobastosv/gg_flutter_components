import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class GGLoadingDoubleBounce extends StatelessWidget {
  const GGLoadingDoubleBounce({
    this.color,
    this.size = 40.0,
  });

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SpinKitDoubleBounce(
      color: color ?? Theme.of(context).primaryColor,
      size: size,
    );
  }
}
