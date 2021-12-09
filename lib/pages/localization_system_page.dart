import 'package:app_localization/main.dart';
import 'package:app_localization/widget/language_picker_widget.dart';
import 'package:app_localization/widget/language_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalizationSystemPage extends StatefulWidget {
 const LocalizationSystemPage({Key? key}) : super(key: key);

  @override
  _LocalizationSystemPageState createState() => _LocalizationSystemPageState();
}

class _LocalizationSystemPageState extends State<LocalizationSystemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MyApp.title),
        centerTitle: true,
        actions: const [
           LanguagePickerWidget(),
           SizedBox(width: 12)
        ],
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const LanguageWidget(),
             const SizedBox(height: 30),
            Text(
              AppLocalizations.of(context)!.language,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              AppLocalizations.of(context)!.hello("vin"),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              AppLocalizations.of(context)!.hello("vin"),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              decoration:const BoxDecoration(
                color: Colors.amberAccent,
                
              )
            )
           ],
         ),
       ),
    );
  }
}