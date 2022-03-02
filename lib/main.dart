import 'package:flutter/material.dart';
import 'package:Fresh_Kart_User/screens/main_screen.dart';
import 'package:Fresh_Kart_User/screens/onboarding_screen1.dart';
import 'package:Fresh_Kart_User/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fresh Kart User',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

