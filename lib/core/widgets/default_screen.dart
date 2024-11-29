import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/apptheme.dart';

class DefaultScreen extends StatelessWidget {
  DefaultScreen({super.key, required this.body});

  Widget body;

  @override
  Widget build(BuildContext context) {
    bool isDark = AppTheme.isDark;
    return Stack(
      children: [
        Image.asset(
          isDark ? "assets/images/dark_bg.png" : "assets/images/default_bg.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        body
      ],
    );
  }
}
