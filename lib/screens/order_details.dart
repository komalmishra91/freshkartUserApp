import 'package:flutter/material.dart';
import 'package:Fresh_Kart_User/constants/assets.dart';
import 'package:Fresh_Kart_User/constants/color.dart';
import 'package:Fresh_Kart_User/helper_widgets/custom_button.dart';
import 'package:Fresh_Kart_User/helper_widgets/helper_utilities.dart';
import 'package:Fresh_Kart_User/screens/review_screen.dart';


class OrderDetails extends StatefulWidget {
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  bool iscash = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            children: [
              HelperUtility.appBar(title: "Order Details",color: ColorConstants.black,context: context,width: 80),
              SizedBox(height: 20,),
              Padding(
                padding:  EdgeInsets.only(top: 20),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: (){

                    },
                    child: Container(


                      padding: EdgeInsets.only(left: 20,bottom: 10,top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [

                          Row(
                            children: [
                              Text("Product Id:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: ColorConstants.grey),),
                              SizedBox(width: 5,),
                              Text("4586",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: ColorConstants.black),),
                            ],
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              Text("Deliver to:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: ColorConstants.grey),),
                              SizedBox(width: 5,),
                              Text("D-205,Sector 2,Chitrakot",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: ColorConstants.black),),
                            ],
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              Text("Total Payment:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: ColorConstants.grey),),
                              SizedBox(width: 5,),
                              Image.asset(AppImages.indianRsImg,height: 12,),
                              SizedBox(width: 3,),
                              Text(
                                "150",
                                style: TextStyle(
                                    color: ColorConstants.lightGreen,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              Text("Order Date:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: ColorConstants.grey),),
                              SizedBox(width: 5,),
                              Text("17/02/2022",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color:ColorConstants.black),),
                            ],
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              Text("Order Status:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: ColorConstants.grey),),
                              SizedBox(width: 5,),
                              Text("Delivered",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: ColorConstants.lightGreen),),
                            ],
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              Text("Order Type:",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: ColorConstants.grey),),
                              SizedBox(width: 5,),
                              Text("Online",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: ColorConstants.black),),
                            ],
                          ),
                          SizedBox(height: 10,),

                        ],
                      ),
                    ),
                  ),
                ), ),
              SizedBox(height: 40,),
              CustomButton(bttnText: "Add Review",ontap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReviewScreen()),
                );
              },),
            ],

          ),
        ),
      ),
    );
  }



}
