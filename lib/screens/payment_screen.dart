import 'package:flutter/material.dart';
import 'package:Fresh_Kart_User/constants/assets.dart';
import 'package:Fresh_Kart_User/constants/color.dart';
import 'package:Fresh_Kart_User/helper_widgets/custom_button.dart';
import 'package:Fresh_Kart_User/helper_widgets/helper_utilities.dart';
import 'package:Fresh_Kart_User/screens/address_screen.dart';
import 'package:Fresh_Kart_User/screens/thanku_screen.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List <Data> data =[];
  int selectedIndex ;

  @override

  void initState() {
           initList();
    super.initState();
  }

  initList(){
    data.add(Data(title: "Gpay",image: Image.asset(AppImages.gpayImg,height: 40,width: 40,)));
    data.add(Data(title: "Debit/Credit card",image: Image.asset(AppImages.creditImg,height: 40,width: 40,)));
    data.add(Data(title: "Cash On Delivery",image: Image.asset(AppImages.cashImg,height: 40,width: 40,)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HelperUtility.appBar(title: "Payment Method",color: ColorConstants.black,context: context,width: 60),
              SizedBox(height: 20,),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height*0.08,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                 color:  selectedIndex == index?ColorConstants.primaryColor:Colors.black,width: selectedIndex == index? 2:1)
                        ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           data[index].image,
                           SizedBox(width: 10,),
                           Text(
                             data[index].title,
                             style: TextStyle(
                                 color: ColorConstants.black                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ,
                                 fontSize: 14,
                                 fontWeight: FontWeight.normal),
                           ),
                         ],
                       ),
                      ),
                    );
                  }),
              SizedBox(height: 20,),


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
                    children: [
                      Text(
                        "Free",
                        style: TextStyle(
                            color: ColorConstants.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Image.asset(AppImages.indianRsImg,height: 15,color: ColorConstants.black,),
                          SizedBox(width: 2,),
                          Text(
                            "300",
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
              Spacer(),
              CustomButton(bttnText: "Pay",ontap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThankuScreen()),
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}

class Data{
  String title;
  Widget image;
  Data({this.title,this.image});
}