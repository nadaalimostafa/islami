import 'package:flutter/material.dart';
import 'package:islami/providers/sebha_provider.dart';
import 'package:islami/providers/settings_%20provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return ChangeNotifierProvider(
      create: (context) => SebhaProvider(),
      child: Consumer2<SebhaProvider,SettingProvider>(
        builder: ( context, SebhaProvider,settingProvider,child){  
          return Center(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    
                    padding: EdgeInsets.only(left: width * 0.07),
                    child: settingProvider.themeMode==ThemeMode.dark?
                     Image.asset("assets/images/head of seb7a.png")
                     :Image.asset("assets/images/head_of_light_seb7a.png")
        
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.028
                    ),
                    child: GestureDetector(
                      onTap:SebhaProvider.azkarOnClick ,
                      child: Transform.rotate(
                        angle: SebhaProvider.angle,
                        child:  settingProvider.themeMode==ThemeMode.dark?
                         Image.asset("assets/images/body_of_seb7a.png",height: height * 0.36)
                         :Image.asset("assets/images/body_of_light_seb7a.png",height: height * 0.36)
        
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'عدد التسبيحات',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: height * 0.08),
              Container(
                width: width * 0.2,
                height: height * 0.08,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.57),
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Center(
                  child: Text(
                   SebhaProvider. counter .toString(),
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 25),
                  ),
                ),
              ),
              SizedBox(height: height * 0.04),
              ElevatedButton(
                  onPressed: SebhaProvider.azkarOnClick,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.tertiary,
                    minimumSize: Size(width * 0.4, height * 0.08),
                    maximumSize: Size(width * 0.4, height * 0.08),
                  ),
                  child: Text(
                   SebhaProvider.azkar[SebhaProvider.index],
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                
              ),
        ]),
           );

        }  
      )     
      );

    
  }
}
