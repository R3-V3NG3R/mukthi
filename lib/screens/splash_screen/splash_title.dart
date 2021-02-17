import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';

class SplashTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      kAppTitle.toUpperCase(),
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 40.0,
        color: kSecondaryColor,
      ),
    );
  }
}
