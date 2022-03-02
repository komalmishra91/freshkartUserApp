import 'package:flutter/material.dart';
import 'package:Fresh_Kart_User/constants/assets.dart';
import 'package:Fresh_Kart_User/constants/color.dart';
import 'package:Fresh_Kart_User/helper_widgets/custom_button.dart';
import 'package:Fresh_Kart_User/helper_widgets/helper_utilities.dart';
import 'package:Fresh_Kart_User/screens/orders_screen.dart';

class ThankuScreen extends StatefulWidget {
  @override
  _ThankuScreenState createState() => _ThankuScreenState();
}

class _ThankuScreenState extends State<ThankuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              HelperUtility.appBar(title: "Thank you",color: ColorConstants.black,context: context,width: 100),
             SizedBox(height: 200,),
              Image.asset(AppImages.thankuImg,height: 150,width: 100),
              SizedBox(height: 10,),
              Text("Your Order Successfully Placed",style: TextStyle(color: ColorConstants.black,fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text("You can now find your order details",style: TextStyle(color: ColorConstants.grey,fontSize: 12,fontWeight: FontWeight.normal),),
              Text("at orders",style: TextStyle(color: ColorConstants.grey,fontSize: 12,fontWeight: FontWeight.normal),),
             Spacer(),
              CustomButton(bttnText: "Done",ontap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrdersScreen()),
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}
