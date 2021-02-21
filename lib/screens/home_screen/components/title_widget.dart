
import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24.0,
        bottom: 16.0,
      ),
      child: Text(
        title.trim(),
        style: TextStyle(
          color: kSecondaryColor,
          fontWeight: FontWeight.w600,
          fontSize: 16.0,
        ),
      ),
    );
  }
}
