import 'package:flutter/material.dart';
import 'package:islami/providers/settings_%20provider.dart';
import 'package:islami/setting_details.dart/selected_item.dart';
import 'package:islami/setting_details.dart/unselected%20_item.dart';
import 'package:provider/provider.dart';

class LanguageButtomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);

    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         SelectedItem(
           settingProvider.language=="ar"
           ?"العربية"
           :"English"),
         SizedBox(
         height: 15,
          ),
         InkWell(
          onTap: (){
            settingProvider.language=="ar"
            ?settingProvider.changeLanguage("en") 
            :settingProvider.changeLanguage("ar");
          },
          child: UnSelectedItem(
             settingProvider.language=="ar"
           ? "English"
           :"العربية"
          )),
        ],
      ),
    );
  }
}