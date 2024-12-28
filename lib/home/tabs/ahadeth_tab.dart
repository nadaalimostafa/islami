import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ahadeth/ahadeth_details_screen.dart';
import 'package:islami/ahadeth/hadeth.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  @override
  void initState() {
    super.initState();
    readFile();
  }

  @override
  Widget build(BuildContext context) {
    
    return hadethContent.isEmpty?
          Center(child: CircularProgressIndicator(),)
          : Column(
      children: [
        Expanded(
            flex: 1,
             child: Image.asset("assets/images/hadith_header.png")),
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
        ),
        Text(AppLocalizations.of(context)!.hadeth,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium),
        Divider(color:Theme.of(context).colorScheme.tertiary,),
        Expanded(
          flex: 2,
          child: ListView.separated(

              itemBuilder: (context, index) => InkWell(
                onTap:() {
                    Navigator.of(context).pushNamed(AhadethDetailsScreen.routeName,arguments:  hadethContent[index]);
                },
                child: Text(
                      hadethContent[index].title,
                      textAlign: TextAlign.center,
                      style:Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w400),
                    ),
              ),
              separatorBuilder: (context, index) => Divider(color: Colors.transparent,),
              itemCount: hadethContent.length),
        ),
      ],
    );
  }

  List<Hadeth> hadethContent = [];

  readFile() async {
    String fileContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hadethDetails = fileContent.split("#");
    for (int i = 0; i < hadethDetails.length; i++) {
      List<String> hadethLines = hadethDetails[i].trim().split("\n");
      String hadethTilte = hadethLines[0];
      hadethLines.removeAt(0);
      String content = hadethLines.join(" ");
      hadethContent.add(Hadeth(title: hadethTilte, content: content));
    }

    setState(() {});
  }
}
