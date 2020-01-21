import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Size getScreenSize(BuildContext context) => MediaQuery.of(context).size;

getLocalization(BuildContext context,String key){
  return AppLocalizations.of(context).tr(key);
}

enum Langs{
  EN,AR
}

switchLanguage(BuildContext context,Langs langs){
  if(langs == Langs.AR){
    EasyLocalizationProvider.of(context).data.changeLocale(Locale("ar","AE"));
  }else{
    EasyLocalizationProvider.of(context).data.changeLocale(Locale("en","US"));
  }
}

bool isArabic(BuildContext context){
  return EasyLocalizationProvider.of(context).data.locale.languageCode == "ar";
}