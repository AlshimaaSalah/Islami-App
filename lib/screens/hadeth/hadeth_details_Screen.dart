import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/core/widgets/default_screen.dart';
import 'package:islami_app/screens/hadeth/hadeth_data_class.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routName="hadethdetails";
  @override
  Widget build(BuildContext context) {
    var hadethdata=ModalRoute.of(context)?.settings.arguments as HadethData;
    return DefaultScreen(
        body: Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.appTitle,
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          margin: EdgeInsets.only(top: 24, bottom: 20, left: 14, right: 14),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),

          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
                child: Text(
                  hadethdata.title,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontSize: 25),
                  textDirection: TextDirection.rtl,
                ),
              ),
            Divider(),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Text(
                      hadethdata.content,
                      style: Theme.of(context).textTheme.bodySmall,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

}
