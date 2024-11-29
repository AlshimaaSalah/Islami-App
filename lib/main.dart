import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/screens/hadeth/hadeth_details_Screen.dart';
import 'package:islami_app/screens/home_screen.dart';
import 'package:islami_app/screens/quran/sura_details_screen.dart';
import 'package:islami_app/screens/splash_screen.dart';

import 'core/theme/apptheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      routes: {
        SuraDetailsScreen.routeName: (_)=>SuraDetailsScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        SplashScreen.routName: (_) => SplashScreen(),
        HadethDetailsScreen.routName:(_)=>HadethDetailsScreen()
      },
      initialRoute: SplashScreen.routName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale("ar"),
    );
  }
}
