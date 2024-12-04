import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/core/theme/apptheme.dart';
import 'package:islami_app/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                themeProvider.changeTheme(ThemeMode.light);
              });
            },
            child: themeProvider.isDarkEnabled()
                ? getUnSelectedItem(
                    context, AppLocalizations.of(context)!.light)
                : getSelectedItem(context, AppLocalizations.of(context)!.light),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              setState(() {
                themeProvider.changeTheme(ThemeMode.dark);
              });
            },
            child: themeProvider.isDarkEnabled()
                ? getSelectedItem(
                    context,
                    AppLocalizations.of(context)!.dark,
                  )
                : getUnSelectedItem(
                    context, AppLocalizations.of(context)!.dark),
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
      child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}
