import 'package:flutter/material.dart';
import 'package:Fresh_Kart_User/constants/assets.dart';
import 'package:Fresh_Kart_User/constants/color.dart';
import 'package:Fresh_Kart_User/helper_widgets/custom_button.dart';
import 'package:Fresh_Kart_User/helper_widgets/helper_utilities.dart';
import 'package:Fresh_Kart_User/screens/cart_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HelperUtility.appBar(title: "Products",color: ColorConstants.black,context: context,width: 100),
              SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width ,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(AppImages.vegeImg,fit: BoxFit.cover,)),
              ),
              SizedBox(height: 20,),
              Text(
                "Green Vegetables",
                style: TextStyle(
                    color: ColorConstants.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5,),
              Text(
                "It is a long established fact that a long reader will be distracted by the",
                style: TextStyle(
                    color: ColorConstants.grey, fontSize: 10),
              ),
              SizedBox(height: 20,),
             Row(
               children: [
                 Image.asset(AppImages.indianRsImg,height: 15,),
                 SizedBox(width: 3,),
                 Text(
                   "150",
                   style: TextStyle(
                       color: ColorConstants.lightGreen,
                       fontSize: 16,
                       fontWeight: FontWeight.bold),
                 ),
               ],
             ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width*0.12,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:HexColor("#CFF0DD")),
                    child:Image.asset(AppImages.subImg,),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    "1",
                    style: TextStyle(
                        color:ColorConstants.black, fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width*0.12,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: HexColor("#CFF0DD")),
                    child:Image.asset(AppImages.addImg,),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              CustomButton(bttnText: "Add to cart",ontap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartScreen()),
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}
