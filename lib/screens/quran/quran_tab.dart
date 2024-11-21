import 'package:flutter/material.dart';
import 'package:islami_app/screens/quran/quran%20model.dart';
import 'package:islami_app/screens/quran/widget/sura_title&numbert_widget.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});
  final List<String> suraNames = const [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
   return  Column(
     children: [
       Image.asset("assets/images/qur2an_screen_logo.png", scale: 1.4,),
       Divider(),
       Row(
         // mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           Expanded(
               child: Center(
                   child: Text(
                     "رقم السورة",
                     style: theme.textTheme.bodyLarge,
                   ))),
           SizedBox(
             height: 27,
             child: VerticalDivider(),
           ),
           Expanded(
               child: Center(
                   child: Text(
                     'إسم السورة',
                     style: theme.textTheme.bodyLarge,
                   )))
         ],
       ),
       Divider(),

       Expanded(
           child: ListView.builder(
             itemCount: suraNames.length,
               itemBuilder: (_,index)=>SuraTitle_NumbertWidget(
                 sura: SuraArguments(
                     suraName: suraNames[index],
                     suraNumber: index+1),)
             ,),
       ),
     ],
   );
  }
}
