import 'package:flutter/material.dart';
import 'package:islami_app/screens/hadeth/hadeth_data_class.dart';

import '../hadeth_details_Screen.dart';

class HadethTitleWidget extends StatelessWidget {
  const HadethTitleWidget({super.key, required this.hadeth});

  final HadethData hadeth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routName,
            arguments: hadeth);
      },
      child: Text(
        "${hadeth.title}",
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(height: 1),
      ),
    );
  }
}
