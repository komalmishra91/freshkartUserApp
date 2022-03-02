import 'package:flutter/material.dart';
import 'package:Fresh_Kart_User/constants/assets.dart';
import 'package:Fresh_Kart_User/constants/color.dart';
import 'package:Fresh_Kart_User/helper_widgets/custom_button.dart';
import 'package:Fresh_Kart_User/screens/login_screen.dart';
import 'package:Fresh_Kart_User/screens/main_screen.dart';

class OnBoardingScreen3 extends StatefulWidget {
  @override
  _OnBoardingScreen3State createState() => _OnBoardingScreen3State();
}

class _OnBoardingScreen3State extends State<OnBoardingScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),

              ),
              child: Image.asset(AppImages.onBoardingImg3)),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Text(
              "We also deliver fresh vegetables",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: ColorConstants.lightGreen),
            ),
          ),
          Text(
            " & fruits",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: ColorConstants.lightGreen),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.dotImg, height: 10, width: 10),
              SizedBox(
                width: 5,
              ),
              Image.asset(AppImages.dotImg, height: 10, width: 10),
              SizedBox(
                width: 5,
              ),
              Image.asset(
                AppImages.dashImg,
                height: 20,
                width: 20,
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: CustomButton(
                bttnText: "Next",
                ontap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                }),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text(
              "Skip",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: ColorConstants.lightGreen),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      )),
    );
  }
}
