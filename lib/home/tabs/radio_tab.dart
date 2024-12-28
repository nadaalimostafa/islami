import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery .of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_image.png"),
                SizedBox(height:height*0.07),
     
        Text("اذاعة القران الكريم ",
        style:Theme.of(context).textTheme.titleMedium ,),
        SizedBox(height:height*0.07),
        Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Icon(Icons.play_arrow,
            size: 55,
            color: Theme.of(context).colorScheme.primary,),
             
          ],
        )

      ],
    );
  }
}