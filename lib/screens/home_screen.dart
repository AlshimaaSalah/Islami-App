import 'package:flutter/material.dart';
import 'package:islami_app/core/widgets/default_screen.dart';
import 'package:islami_app/screens/quran/quran_tab.dart';
import 'package:islami_app/screens/radio/radio_tab.dart';
import 'package:islami_app/screens/sebha/sebha_tab.dart';
import 'package:islami_app/screens/settingd/settings_tab.dart';

import 'hadeth/hadeth_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      body: Scaffold(
        appBar: AppBar(
          title: Text(
            "إسلامي",
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
                label: "Quran"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                label: "Hadeth"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                label: "Sebha"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
                label: "Radio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings")
          ],
        ),
        body: ScreensList[selectedIndex],
      ),
    );
  }

  List ScreensList = [
    QuranScreen(),
    HadethScreen(),
    SebhaScreen(),
    RadioScreen(),
    SettingsScreen()
  ];
}
