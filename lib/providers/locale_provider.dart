import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  String currentLocale = "en";

  changeLocale(String newLocale) {
    currentLocale = newLocale;
    notifyListeners();
  }
}
