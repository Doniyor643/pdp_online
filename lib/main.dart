import 'package:flutter/material.dart';
import 'package:pdp_online/home_page.dart';
import 'package:pdp_online/sign_page.dart';

void main() async{
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
        SignPage.id: (context) => const SignPage(),
      },
    );
  }
}
