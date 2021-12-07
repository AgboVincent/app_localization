import 'package:app_localization/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier{

   Locale? _locale  ;
   
  Locale get local => _locale == null? const Locale('en'): _locale! ;

  void setLocale(Locale locale){
    if(!L10n.all.contains(locale)) return;
    _locale = locale;
    print(locale);
    notifyListeners();
  
  }

  void clearLocale(){
    _locale = null ;
    notifyListeners();
  }
}