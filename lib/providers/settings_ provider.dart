import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
   
   SettingProvider(){
      getTheme();
    }

   changeTheme(ThemeMode theme) {
    if (theme == themeMode) return;
    themeMode = theme;
    saveTheme(theme);
    notifyListeners();
  }

  String language = "en";
  changeLanguage(String newLanguage) {
    if (language == newLanguage) return;
    language = newLanguage;

    notifyListeners();
  }

  saveTheme(ThemeMode theme) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
   if (theme == ThemeMode.light) {
      prefs.setString("theme", "light");
    }else{
      prefs.setString("theme", "dark");
    }
  }
  getTheme()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String chachTheme = prefs.getString("theme")??"light";

    if (chachTheme == "light") { 
      themeMode = ThemeMode.light;
    } else {
      themeMode = ThemeMode.dark;
    
    }
    notifyListeners();
  }


  saveLanguage(String updatelanguage)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if(updatelanguage == "en" ){
      prefs.setString("updatelanguage", "en");
    }else{
      prefs.setString("updatelanguage", "ar");
    }
    
  }

  getLanguage()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String lang = prefs.getString("language")??"en";
    if(lang =="en"){
      language = "en";
    }else{
      language = "ar";
    }
    notifyListeners();
  }
}