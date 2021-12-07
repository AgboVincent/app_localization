import 'package:app_localization/l10n.dart';
import 'package:app_localization/pages/localization_system_page.dart';
import 'package:app_localization/provider/locale_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
   static const title = "App Localization";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LocaleProvider>(
      create: (context)=>LocaleProvider(),
      builder: (context, child){
        final local = Provider.of<LocaleProvider>(context, listen: true);
       print(local);
        return MaterialApp(
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.deepOrangeAccent,
          scaffoldBackgroundColor: Colors.deepPurple
        ),
        locale: local.local,
        supportedLocales: L10n.all,
        localizationsDelegates: const [
           AppLocalizations.delegate,
           GlobalMaterialLocalizations.delegate,
           GlobalCupertinoLocalizations.delegate,
           GlobalWidgetsLocalizations.delegate
        ],
        home: const LocalizationSystemPage()
      );
      },
    );
  }
}

