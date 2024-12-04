import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class DefaultScreen extends StatelessWidget {
  DefaultScreen({super.key, required this.body});

  Widget body;

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    bool isDark = themeProvider.isDarkEnabled();
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
