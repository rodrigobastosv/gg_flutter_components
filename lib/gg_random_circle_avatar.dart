import 'package:avataaar_image/avataaar_image.dart';
import 'package:flutter/material.dart';

enum Type { male, female }

class GGRandomCircleAvatar extends StatefulWidget {
  GGRandomCircleAvatar(
      {@required this.radius,
      this.backgroundColor = Colors.white,
      this.errorImage = const Icon(Icons.error),
      this.gender,
      this.placeholder = const CircularProgressIndicator()})
      : assert(radius != null && radius > 0);

  final double radius;
  final Color backgroundColor;
  final Widget errorImage;
  final Type gender;
  final Widget placeholder;

  @override
  _GGRandomCircleAvatarState createState() => _GGRandomCircleAvatarState();
}

class _GGRandomCircleAvatarState extends State<GGRandomCircleAvatar> {
  Avataaar avatar;

  final AvataaarsApi api = AvataaarsApi();

  String getUrl() {
    return api.getUrl(avatar, widget.radius);
  }

  Top _getTop() {
    if (widget.gender == null) {
      return Top.random;
    } else if (widget.gender == Type.male) {
      return Top.shortHairShortFlat(
        facialHair: FacialHair.blank,
      );
    }
    return Top.longHairStraightStrand(
      facialHair: FacialHair.blank,
    );
  }

  @override
  void initState() {
    super.initState();
    avatar = Avataaar(
        top: _getTop(),
        clothes: Clothes.random,
        style: Style.random,
        eyes: Eyes.random,
        skin: Skin.random,
        eyebrow: Eyebrow.random,
        mouth: Mouth.random);
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: widget.radius,
      backgroundColor: widget.backgroundColor,
      child: AvataaarImage(
        avatar: avatar,
        errorImage: widget.errorImage,
        placeholder: widget.placeholder,
      ),
    );
  }
}
