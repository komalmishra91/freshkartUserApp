import 'package:flutter/material.dart';
import 'package:Fresh_Kart_User/constants/assets.dart';
import 'package:Fresh_Kart_User/constants/color.dart';
import 'package:Fresh_Kart_User/helper_widgets/custom_button.dart';
import 'package:Fresh_Kart_User/helper_widgets/custom_textfield.dart';
import 'package:Fresh_Kart_User/helper_widgets/helper_utilities.dart';
import 'package:Fresh_Kart_User/screens/address_screen.dart';
import 'package:hexcolor/hexcolor.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(

            children: [
HelperUtility.appBar(title: "Cart",color: ColorConstants.black,context: context,width: 120),
              SizedBox(height: 20,),
             ListView.builder(
               shrinkWrap: true,
               itemCount: 2,
                 itemBuilder: (context,index){
                 return Container(
                   height: MediaQuery.of(context).size.height*0.10,
                   width: MediaQuery.of(context).size.width,
                   margin: EdgeInsets.only(top: 10),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: HexColor("#E6FFF1")
                   ),
                   child: Padding(
                     padding:  EdgeInsets.only(left: 10,right: 10),
                     child: Row(

                       children: [
                         Text(
                           "1*",
                           style: TextStyle(
                               color: ColorConstants.black,
                               fontSize: 14,
                               fontWeight: FontWeight.bold),
                         ),
                         SizedBox(width: 40,),
                         Text(
                           "Green Vegetables",
                           style: TextStyle(
                               color: ColorConstants.black,
                               fontSize: 14,
                               fontWeight: FontWeight.bold),
                         ),
                         SizedBox(width: 30,),
                         Image.asset(AppImages.indianRsImg,height: 15,),
                         SizedBox(width: 5,),
                         Text(
                           "250",
                           style: TextStyle(
                               color: ColorConstants.lightGreen,
                               fontSize: 16,
                               fontWeight: FontWeight.bold),
                         ),
                         SizedBox(width: 10,),
                         Container(
                           height: 30,
                           width: 30,
                           padding: EdgeInsets.all(8),
                           decoration:
                           BoxDecoration(color:Colors.white, shape: BoxShape.circle),
                           child: Center(child: Image.asset(AppImages.cancelImg)),
                         ),
                       ],
                     ),
                   ),
                 );
                 }),
              SizedBox(height: 20,),
              Text(
                "Offers",
                style: TextStyle(
                    color:ColorConstants.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: (){

                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 10, bottom: 10, top: 10,right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.14,
                          width: MediaQuery.of(context).size.width * 0.28,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey),
                          child: Image.asset(AppImages.vegeImg,fit: BoxFit.cover,),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "1 Kg potato FREE",
                                  style: TextStyle(
                                      color: ColorConstants.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  "It is a long established fact that a long reader will be distracted by the",
                                  style: TextStyle(
                                      color: ColorConstants.grey , fontSize: 10),
                                ),

                            ]))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              CustomTextField(
                helperTxt: "Enter Coupon Code",
                controller: codeController,
                suffixIcon: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor("#09B44D"),
                  ),
                  margin: EdgeInsets.all(2),
                  child: Center(child: Text("Apply",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal),)),

                ),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery",
                        style: TextStyle(
                            color: ColorConstants.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "Total",
                        style: TextStyle(
                            color: ColorConstants.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Free",
                        style: TextStyle(
                            color:ColorConstants.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Image.asset(AppImages.indianRsImg,height: 15,color: ColorConstants.black,),
                          SizedBox(width: 2,),
                          Text(
                            "150",
                            style: TextStyle(
                                color: ColorConstants.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40,),
              CustomButton(bttnText: "Make Order",ontap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddressesScreen()),
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}
