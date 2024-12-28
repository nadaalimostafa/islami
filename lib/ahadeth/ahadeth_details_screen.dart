import 'package:flutter/material.dart';
import 'package:islami/ahadeth/hadeth.dart';
import 'package:islami/providers/settings_%20provider.dart';
import 'package:provider/provider.dart';

class AhadethDetailsScreen extends StatelessWidget {
  static const routeName = "hadeth";
  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    Hadeth arg = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            settingProvider.themeMode == ThemeMode.dark?
            "assets/images/dark_Image.png"
           : "assets/images/bg3.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(arg.title,
                  ),
        ),
        body: Column(
          children: [
            Expanded(
            
              child:
                  Card(child: SingleChildScrollView(child: Text(arg.content,
                    textDirection: TextDirection.rtl,   
                  style: Theme.of(context).textTheme.bodyMedium  ,
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}
