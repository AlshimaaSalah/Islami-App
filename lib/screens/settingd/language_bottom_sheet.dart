import 'package:flutter/material.dart';
import 'package:islami_app/providers/locale_provider.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';

import '../../core/theme/apptheme.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    LocaleProvider localeProvider = Provider.of<LocaleProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                localeProvider.changeLocale("en");
              });
            },
            child: localeProvider.currentLocale == "en"
                ? getSelectedItem(context, "English")
                : getUnSelectedItem(context, "English"),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              setState(() {
                localeProvider.changeLocale("ar");
              });
            },
            child: localeProvider.currentLocale == "ar"
                ? getSelectedItem(context, "العربية")
                : getUnSelectedItem(
                    context,
                    "العربية",
                  ),
          )
        ],
      ),
    );
  }

  getSelectedItem(BuildContext context, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium?.copyWith(
              color: Provider.of<ThemeProvider>(context).isDarkEnabled()
                  ? AppTheme.darkSacandry
                  : Theme.of(context).primaryColor),
        ),
        Icon(
          Icons.check,
          color: Provider.of<ThemeProvider>(context).isDarkEnabled()
              ? AppTheme.darkSacandry
              : Theme.of(context).primaryColor,
        )
      ],
    );
  }

  getUnSelectedItem(BuildContext context, String text) {
    return Container(
      width: double.infinity,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
