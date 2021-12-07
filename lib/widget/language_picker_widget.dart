import 'package:app_localization/l10n.dart';
import 'package:app_localization/provider/locale_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class LanguagePickerWidget extends StatefulWidget {
  const LanguagePickerWidget({Key? key}) : super(key: key);

  @override
  State<LanguagePickerWidget> createState() => _LanguagePickerWidgetState();
}

class _LanguagePickerWidgetState extends State<LanguagePickerWidget> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context, listen: false);
    final locale  = provider.local;
    //print(locale);
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        icon: Container(width: 12),
        value: locale,
        items: L10n.all.map((locale) {
          final flag = L10n.getFlag(locale.languageCode);
          return DropdownMenuItem(
          child: Center(
            child: Text(
              flag,
              style: const TextStyle(
                fontSize: 32
              ),
            ),
          ),
          value: locale,
          onTap: () {
           setState(() {
             final provider = Provider.of<LocaleProvider>(context, listen: false);
            provider.setLocale(locale);  
            //print(locale);
           });
          },
          );
        }).toList(),
        onChanged: (value){
          
        },
        ),
    );
  }
}