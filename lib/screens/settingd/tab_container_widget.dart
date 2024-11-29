import 'package:flutter/material.dart';

class TabContainerWidget extends StatelessWidget {
  TabContainerWidget({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Theme.of(context).cardColor,
          border: Border.all(width: 1, color: Theme.of(context).primaryColor)),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
