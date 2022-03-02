import 'package:flutter/material.dart';
import 'package:Fresh_Kart_User/constants/assets.dart';
import 'package:Fresh_Kart_User/constants/color.dart';
import 'package:Fresh_Kart_User/helper_widgets/custom_button.dart';
import 'package:Fresh_Kart_User/screens/login_screen.dart';
import 'package:Fresh_Kart_User/screens/main_screen.dart';
import 'package:Fresh_Kart_User/screens/onboarding_screen2.dart';

class OnBoardingScreen1 extends StatefulWidget {
  @override
  _OnBoardingScreen1State createState() => _OnBoardingScreen1State();
}

class _OnBoardingScreen1State extends State<OnBoardingScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow:[


              ],
              ),
                child: Image.asset(AppImages.onBoardingImg1)),
            SizedBox(height: 30,),
            Padding(
              padding:  EdgeInsets.only(left: 6,right: 6),
              child: Text(
                "Choose your favourite fruit and vegetables ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: ColorConstants.lightGreen),
              ),
            ),
            Text(
              "from nearest store",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: ColorConstants.lightGreen),
            ),
                SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.dashImg,height: 20,width: 20,),
                SizedBox(width: 5,),
                Image.asset(AppImages.dotImg,height: 10,width: 10),
                SizedBox(width: 5,),
                Image.asset(AppImages.dotImg,height: 10,width: 10),
              ],
            ),
            Spacer(),
            Padding(
              padding:  EdgeInsets.only(left: 20,right: 20),
              child: CustomButton(bttnText: "Next",ontap: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => OnBoardingScreen2()),
                );
              },),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
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
            SizedBox(height: 20,),
          ],
        )
      ),
    );
  }
}
