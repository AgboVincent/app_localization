
import 'package:app_localization/l10n.dart';
import 'package:flutter/material.dart';


class LanguageWidget extends StatelessWidget {
  const LanguageWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final flag = L10n.getFlag(locale.languageCode);
    return Center(
      child: CircleAvatar(
        backgroundColor:Colors.white,
        radius: 72,
        child: Text(
          flag,
          style: const TextStyle(
            fontSize: 80,
          ),
        )),
        );
  }
}