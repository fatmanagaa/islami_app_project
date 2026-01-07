import 'package:flutter/material.dart';
import 'package:islami_app/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:IntroScreen(),
        initialRoute: IntroScreen.routeName,
        routes: {
          IntroScreen.routeName: (context) => IntroScreen(),


        });

  }
}
