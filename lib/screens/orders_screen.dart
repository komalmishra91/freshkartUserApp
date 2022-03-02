import 'package:flutter/material.dart';
import 'package:Fresh_Kart_User/constants/assets.dart';
import 'package:Fresh_Kart_User/constants/color.dart';
import 'package:Fresh_Kart_User/helper_widgets/custom_button.dart';
import 'package:Fresh_Kart_User/helper_widgets/helper_utilities.dart';
import 'package:Fresh_Kart_User/screens/order_details.dart';
import 'package:hexcolor/hexcolor.dart';

class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  bool ispending = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              HelperUtility.appBar(
                  title: " My Orders", color: ColorConstants.black, context: context,width: 80),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            ispending = !ispending;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 150,
                          child: Center(
                              child: Text(
                            "Pending",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: ispending == false
                                    ? Colors.white
                                    : ColorConstants.black),
                          )),
                          decoration: BoxDecoration(
                              color: ispending == false
                                  ? ColorConstants.primaryColor
                                  : Colors.white,
                              border:
                                  Border.all(width: 0.5, color: ColorConstants.grey),
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            ispending = !ispending;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 120),
                          height: 40,
                          width: 150,
                          child: Center(
                              child: Text(
                            "Delivered",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: ispending == true
                                    ? Colors.white
                                    : ColorConstants.black),
                          )),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5, color: ColorConstants.grey),
                              color: ispending == true
                                  ? ColorConstants.primaryColor
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              ispending == false ? _pendingListView() : _deliveredListView()
            ],
          ),
        ),
      ),
    );
  }

  _pendingListView() {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: 20),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderDetails()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 20, bottom: 10, top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Product Id:",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: ColorConstants.grey),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "4586",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: ColorConstants.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "Deliver to:",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: ColorConstants.grey),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "D-205,Sector 2,Chitrakot",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: ColorConstants.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "Total Payment:",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: ColorConstants.grey),
                            ),
                            SizedBox(
                              width: 5,
                            ),
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
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "Order Date:",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: ColorConstants.grey
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "17/02/2021",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: ColorConstants.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "Order Status:",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color:ColorConstants.grey),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Pending",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: HexColor("#FFD400")),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  _deliveredListView() {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(top: 20),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => OrderDetails()),
                                        );
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 20, bottom: 10, top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Product Id:",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: ColorConstants.grey),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "4586",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: ColorConstants.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "Deliver to:",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: ColorConstants.grey),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "D-205,Sector 2,Chitrakot",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: ColorConstants.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "Total Payment:",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: ColorConstants.grey),
                            ),
                            SizedBox(
                              width: 5,
                            ),
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
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "Order Date:",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: ColorConstants.grey),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "17/02/2021",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: ColorConstants.black),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                              "Order Status:",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                  color: ColorConstants.grey),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Delivered",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: ColorConstants.lightGreen),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
