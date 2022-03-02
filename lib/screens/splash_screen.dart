import 'dart:async';

import 'package:flutter/material.dart';
import 'package:Fresh_Kart_User/constants/assets.dart';
import 'package:Fresh_Kart_User/screens/home_screen.dart';
import 'package:Fresh_Kart_User/screens/login_screen.dart';
import 'package:Fresh_Kart_User/screens/onboarding_screen1.dart';
import 'package:hexcolor/hexcolor.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                OnBoardingScreen1()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  HexColor("#FFFFFF"),
                  HexColor("#CFF0DD"),

                ],
                begin: const FractionalOffset(0.1, 0.0),
                end: const FractionalOffset(0.0, 1.0),
                stops: [0.0, 0.5],
                tileMode: TileMode.clamp),

          ),
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImages.splashImg,height: 100,width: MediaQuery.of(context).size.width,),

            ],
          ),
        ));
  }
}
