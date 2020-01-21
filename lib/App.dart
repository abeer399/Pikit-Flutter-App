import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pikit_app/Utils.dart';
import 'Lanuage.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates:[
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        //app-specific localization
        EasylocaLizationDelegate(
            locale: data.locale,
            path:'Lang'),
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ar', 'AE')],
      locale: data.savedLocale,
      builder: (ctx,child){
        return Scaffold(
          body: child,
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              switchLanguage(context, isArabic(context) ? Langs.EN : Langs.AR);
            },
          ),
        );
      },
      home:Lanuage(),
    );
  }
}
