import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/providers/settings_%20provider.dart';
import 'package:islami/quran_details/verse_widget.dart';
import 'package:islami/style/app_style.dart';
import 'package:provider/provider.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routeName = "SuraDetails";
  @override
  State<QuranDetailsScreen> createState() => QuranDetailsScreenStatexte();
}

class QuranDetailsScreenStatexte extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);

    QuranDataArgument arg =
        ModalRoute.of(context)?.settings.arguments as QuranDataArgument;
      if(sura.isEmpty){
        loadFile(arg.index);
      }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(settingProvider.themeMode == ThemeMode.dark
              ? "assets/images/dark_Image.png"
              : "assets/images/bg3.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(arg.suraname),
        ),
        body: Card(
          child: sura.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemBuilder: (context, index) => VerseWidget(
                        verse: sura[index],
                        verseNumber: index + 1,
                      ),
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.transparent,
                        height: 0,
                      ),
                  itemCount: sura.length),
        ),
      ),
    );
  }

  List<String> sura = [];
  loadFile(int index) async {
    String file = await rootBundle.loadString("assets/files/${index + 1}.txt");
    sura = file.split("\n");
    setState(() {});
  }
}

class QuranDataArgument {
  String suraname;
  int index;
  QuranDataArgument({required this.suraname, required this.index});
}
