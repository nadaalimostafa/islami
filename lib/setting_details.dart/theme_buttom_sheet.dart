import 'package:flutter/material.dart';
import 'package:islami/providers/settings_%20provider.dart';
import 'package:islami/setting_details.dart/selected_item.dart';
import 'package:islami/setting_details.dart/unselected%20_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeButtomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingProvider settingsProvider = Provider.of<SettingProvider>(context);
    return Container(
      color: Theme.of(context).colorScheme.onPrimary,
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(settingsProvider.themeMode == ThemeMode.dark
              ? AppLocalizations.of(context)!.dark
              : AppLocalizations.of(context)!.light),
          const SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                if (settingsProvider.themeMode == ThemeMode.dark) {
                  settingsProvider.changeTheme(ThemeMode.light);
                } else {
                  settingsProvider.changeTheme(ThemeMode.dark);
                }
                Navigator.of(context).pop();
              },
              child: UnSelectedItem(settingsProvider.themeMode == ThemeMode.dark
                  ? AppLocalizations.of(context)!.light
                  : AppLocalizations.of(context)!.dark)),
        ],
      ),
    );
  }
}
