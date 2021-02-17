import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class SplashLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      glowColor: kPrimaryColor.withOpacity(0.2),
      endRadius: 90.0,
      duration: Duration(milliseconds: 2000),
      startDelay: Duration(milliseconds: 0),
      repeat: true,
      child: Image.asset(
        "assets/images/logo.png",
        width: 104.0,
        fit: BoxFit.fitWidth,
      ),

    );
  }
}
