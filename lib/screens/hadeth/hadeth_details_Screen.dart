import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/screens/hadeth/hadeth_data_class.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routName="hadethdetails";
  @override
  Widget build(BuildContext context) {
    var hadethdata=ModalRoute.of(context)?.settings.arguments as HadethData;
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/default_bg.png"),
    fit: BoxFit.fill)),

    child: Scaffold(

      appBar: AppBar(
        title: Text(
          "إسلامي",
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          margin: EdgeInsets.only(top: 24, bottom: 20, left: 14, right: 14),
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
          color: Color(0xFFF8F8F8).withOpacity(.80),

          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(hadethdata.title,style: Theme.of(context).textTheme.bodyMedium,textDirection: TextDirection.rtl,),
            ),
            Divider(),
            Expanded(child: ListView.builder(
              itemCount: 1,
                itemBuilder:(_,index)=> Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Text(hadethdata.content,style: Theme.of(context).textTheme.bodySmall,),
                )
                ))
            ],),
        ),
      ),
      ),
    );
  }

}
