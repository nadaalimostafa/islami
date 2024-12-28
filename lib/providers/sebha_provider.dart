import 'package:flutter/material.dart';

class SebhaProvider extends ChangeNotifier{
   int counter = 0;
  double angle = 0;
  int index =0 ;
  List<String> azkar = [
    "سبحان الله ",
   " الحمدلله",
   "الله اكبر",
  ];
   void azkarOnClick(){
      if(counter <33){
        counter ++;
      }else{
        counter = 0 ;
        index++;
        if (index == azkar.length){
          index = 0;
        }
        
      }
      angle+=30;
     notifyListeners();
  }
}