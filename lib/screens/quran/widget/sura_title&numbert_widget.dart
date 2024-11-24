import 'package:flutter/material.dart';
import 'package:islami_app/screens/quran/quran%20model.dart';
import 'package:islami_app/screens/quran/sura_details_screen.dart';

class SuraTitle_NumbertWidget extends StatelessWidget {
  const SuraTitle_NumbertWidget({super.key,required this.sura});
  final SuraArguments sura;
  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(
            SuraDetailsScreen.routeName,
            arguments: SuraArguments(suraName: sura.suraName, suraNumber: sura.suraNumber),
        );
      },
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: Center(
                  child: Text(
                    "${sura.suraNumber}",
                    style: theme.textTheme.bodyMedium,
                  ))),
          SizedBox(
            height: 47,
            child: VerticalDivider(),
          ),
          Expanded(
              child: Center(
                  child: Text(
                    sura.suraName,
                    style: theme.textTheme.bodyMedium,
                  )))
        ],
      ),
    );
  }
}
