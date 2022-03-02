import 'package:flutter/material.dart';
import 'package:Fresh_Kart_User/constants/assets.dart';
import 'package:Fresh_Kart_User/constants/color.dart';
import 'package:Fresh_Kart_User/helper_widgets/helper_utilities.dart';
import 'package:Fresh_Kart_User/screens/product_detail.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(20),
          child: Column(
            children: [
              HelperUtility.appBar(title: "Products",color: ColorConstants.black,context: context,width: 100),
              _pendingListView()

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
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductDetail()),
                    );
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
                                  "Green Vegetables",
                                  style: TextStyle(
                                      color: ColorConstants.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  "It is a long established fact that a long reader will be distracted by the",
                                  style: TextStyle(
                                      color: ColorConstants.grey, fontSize: 10),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Image.asset(AppImages.indianRsImg,height: 15,),
                                    SizedBox(width: 3,),
                                    Text(
                                      "150",
                                      style: TextStyle(
                                          color: ColorConstants.lightGreen,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 30,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomLeft: Radius.circular(20),

                                          ),
                                          color: HexColor("#22EA2A")
                                      ),
                                      child:Center(
                                        child: Text(
                                          "Add",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 10),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            bottomRight: Radius.circular(20),

                                          ),
                                          color: HexColor("#3DCA39")
                                      ),
                                      child: Icon(Icons.add,color: Colors.white,size: 15,),
                                    ),
                                  ],
                                )
                              ],
                            ))
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
