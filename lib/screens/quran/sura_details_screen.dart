import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/screens/quran/quran%20model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName="details";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var arguments=ModalRoute.of(context)?.settings.arguments as SuraArguments;

    if(verses.isEmpty){
      // Center(child: CircularProgressIndicator(),);
      loadFile(arguments.suraNumber);
    }


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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            margin: EdgeInsets.only(top: 34, bottom: 20, left: 14, right: 14),
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
            color: Color(0xFFF8F8F8).withOpacity(.80),

            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("سورة ${arguments.suraName}"),
                  SizedBox(width: 10,),
                  Icon(Icons.play_circle_fill_rounded)
                ],),
               Expanded(
                   child: ListView.builder(
                     itemCount: verses.length,
                       itemBuilder: (_,index)=>Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Center(
                           child: Text(
                             "${verses[index].trim()} [${index+1}]",
                             textDirection: TextDirection.rtl,
                             style: Theme.of(context).textTheme.bodySmall,
                           ),
                         ),
                       )))
              ],
            ),

          ),
        ),
      ),
    );
  }

  Future<void>loadFile(int suraNumber)async{
    String data=await rootBundle.loadString("assets/files/$suraNumber.txt");
    verses=data.trim().split("\n");
    setState(() {
    });
  }
}
