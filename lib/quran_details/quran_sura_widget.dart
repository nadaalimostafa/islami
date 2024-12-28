import 'package:flutter/material.dart';
import 'package:islami/quran_details/quran_details_screen.dart';

class QuranSuraWidget extends StatelessWidget {
  
  String suraname ; 
  int number;
  int index;
  QuranSuraWidget( { required this.suraname, required this.number, required this.index});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(QuranDetailsScreen.routeName,arguments:QuranDataArgument(
          suraname: suraname,
           index: index));
      },
      child: Row(
        children: [
          Expanded(
            child: Text(
              suraname,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w400),
            ),
          ),
           Container(
              width: 3,
              height: height*0.08,
              color: Theme.of(context).primaryColor,
            ),
          Expanded(
            child: Text(
              number.toString(),
              textAlign: TextAlign.center,
              style:  Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}

