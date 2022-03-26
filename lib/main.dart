import 'package:flutter/material.dart';
import 'package:pdp_online/home_page.dart';
import 'package:pdp_online/task2_1.dart';
import 'package:pdp_online/task2_2.dart';
import 'package:pdp_online/textFields.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox('pdp_online');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        CreateAccount.id: (context) => const CreateAccount(),
        HomeWork.id: (context) => const HomeWork(),
        HomeWork2.id: (context) => const HomeWork2(),
      },
    );
  }
}
