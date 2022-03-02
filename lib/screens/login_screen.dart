import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Fresh_Kart_User/helper_widgets/custom_button.dart';
import 'package:Fresh_Kart_User/helper_widgets/helper_utilities.dart';
import 'package:Fresh_Kart_User/screens/otp_screen.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 10,top: 20,bottom: 20),
          child: ListView(

            children: [
              HelperUtility.appBar(title: "Login",color: Colors.black,context: context,width: 120),
              SizedBox(height: 60,),
              Text("What's your number?",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              Text(" wi'll send you a verification code",style: TextStyle(color: Colors.grey.shade500,fontSize: 11,fontWeight: FontWeight.bold),),
              SizedBox(height: 40,),
              Row(
                children: [
                  Text("+91",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),

                  Expanded(
                    child: TextField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: 20),
                        hintText: " 9898989898",

                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(height: 200,),
              CustomButton(bttnText: "Continue",ontap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtpScreen()),
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}
