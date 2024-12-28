import 'package:flutter/material.dart';
import 'package:islami/home/tabs/ahadeth_tab.dart';
import 'package:islami/home/tabs/quran_tab.dart';
import 'package:islami/home/tabs/radio_tab.dart';
import 'package:islami/home/tabs/sebha_tab.dart';
import 'package:islami/home/tabs/setting_tab.dart';
import 'package:islami/providers/settings_%20provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    AhadethTab(),
    RadioTab(),
    SebhaTab(),
    SettingTab(),
  ];

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);

    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              settingProvider.themeMode == ThemeMode.dark
                ? "assets/images/dark_Image.png"
                : "assets/images/bg3.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islami),
          ),
          body: tabs[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.shifting,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              currentIndex: currentIndex,
              items: [
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    icon: const ImageIcon(
                        AssetImage('assets/images/quran_icn.png')),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    icon: const ImageIcon(
                      AssetImage('assets/images/hadith_icn.png'),
                    ),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    icon:
                        const ImageIcon(AssetImage('assets/images/radio.png')),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    icon: const ImageIcon(
                     AssetImage('assets/images/sebha_icn.png')),
                    label: AppLocalizations.of(context)!.sebha),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings),
              ]),
        ));
  }
}
