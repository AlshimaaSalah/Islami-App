import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/screens/hadeth/hadeth_data_class.dart';
import 'package:islami_app/screens/hadeth/widget/hadeth_title_widget.dart';

class HadethScreen extends StatefulWidget {
  const HadethScreen({super.key});

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List <HadethData> hadethdataList=[];
  @override
  Widget build(BuildContext context) {
    if (hadethdataList.isEmpty) loadHadethFile();
    var theme=Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/hadeth_logo.png",scale: 1.3,),
        Divider(),
        Text(
          AppLocalizations.of(context)!.hadeth_num,
          style: theme.textTheme.bodyLarge,
        ),
        Divider(),
        Expanded(
            child: hadethdataList.isNotEmpty
                ? ListView.builder(
                    itemCount: hadethdataList.length,
                    itemBuilder: (_, index) {
                      return HadethTitleWidget(hadeth: hadethdataList[index]);
                    })
                : Center(child: CircularProgressIndicator())),
      ],
    );
  }

  Future<void>loadHadethFile() async {
    String data=await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String>allHadethDataList=data.trim().split("#");

    for(int i=0;i<allHadethDataList.length;i++){
      String singleHadethData=allHadethDataList[i].trim();
      int titleLength=singleHadethData.indexOf("\n");
      String title=singleHadethData.substring(0,titleLength);
      String hadethContent=singleHadethData.substring(titleLength+1);

      HadethData hadethData=HadethData(title: title, content: hadethContent);
      hadethdataList.add(hadethData);
    }
    setState(() {});
  }
}
