import 'package:flutter/material.dart';
import 'package:todolistapp/screen/intro_page.dart';
import 'package:todolistapp/screen/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/', //최초 ROUTE
      routes: {
        '/': (context) => IntroPage(),
        '/main': (context) => Mainpage(),
      },
    );
  }
}
