import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pdp_online/home_page.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('en','US'),
      Locale('ru','RU'),
      Locale('uz','UZ'),
      Locale('fr','FR'),
      Locale('uk','UK'),
      Locale('ko','KO'),
      Locale('ja','JA'),
    ],
      fallbackLocale: const Locale('en','US'),
      path: 'assets/translations',
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
