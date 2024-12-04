import 'package:flutter/material.dart';
import 'package:islami_app/screens/settingd/language_bottom_sheet.dart';
import 'package:islami_app/screens/settingd/tab_container_widget.dart';
import 'package:islami_app/screens/settingd/theme_bottom_sheet.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Theme",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          InkWell(
              onTap: () {
                showThemeBottomSheet(context);
              },
              child: TabContainerWidget(text: "Light")),
          SizedBox(
            height: 12,
          ),
          Text(
            "Language",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          InkWell(
              onTap: () {
                return showLanguageBottomSheet(context);
              },
              child: TabContainerWidget(text: "English")),
        ],
      ),
    );
  }

  showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ThemeBottomSheet();
        });
  }

  showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LanguageBottomSheet();
        });
  }
}
