import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/locale_provider.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:islami_app/screens/settingd/language_bottom_sheet.dart';
import 'package:islami_app/screens/settingd/tab_container_widget.dart';
import 'package:islami_app/screens/settingd/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

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
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          InkWell(
              onTap: () {
                showThemeBottomSheet(context);
              },
              child: TabContainerWidget(
                  text: Provider.of<ThemeProvider>(context).isDarkEnabled()
                      ? AppLocalizations.of(context)!.dark
                      : AppLocalizations.of(context)!.light)),
          SizedBox(
            height: 23,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          InkWell(
              onTap: () {
                return showLanguageBottomSheet(context);
              },
              child: TabContainerWidget(
                  text:
                      Provider.of<LocaleProvider>(context).currentLocale == "en"
                          ? "English"
                          : "العربية")),
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
