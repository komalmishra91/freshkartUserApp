import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Fresh_Kart_User/constants/assets.dart';
import 'package:Fresh_Kart_User/constants/color.dart';
import 'package:Fresh_Kart_User/screens/product_detail.dart';
import 'package:Fresh_Kart_User/screens/products_screen.dart';
import 'package:Fresh_Kart_User/screens/profile_screen.dart';
import 'package:hexcolor/hexcolor.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  List <Data> data =[];

  @override

  void initState() {
    initList();
    super.initState();
  }

  initList(){
    data.add(Data(title: "Broccoli",image: Image.asset(AppImages.brocolliImg,height: 40,width: 40,),color: HexColor("#FCF1D4")));
    data.add(Data(title: "Apple",image: Image.asset(AppImages.appleImg,height: 40,width: 40,),color: HexColor("#F6D6D4")));
    data.add(Data(title: "Carrot",image: Image.asset(AppImages.carrotImg,height: 40,width: 40,),color: HexColor("#E3EBE4")));
    data.add(Data(title: "Banana",image: Image.asset(AppImages.bananaImg,height: 40,width: 40,),color: HexColor("#E9F5FE")));
    data.add(Data(title: "Lemon",image: Image.asset(AppImages.guavaImg,height: 40,width: 40,),color: HexColor("#FAEBDE")));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfileScreen()),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        height: 50,
                        width: 50,
                        child: Image.asset(AppImages.menuImg,height: 10,width: 10,),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hello",
                            style: TextStyle(color: ColorConstants.black, fontSize: 14,fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5,),
                          Image.asset(AppImages.downArrowImg,height: 8,)
                        ],
                      ),
                      Text(
                        "D-205,Sector 2,Chitrakoot",
                        style: TextStyle(color:ColorConstants.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(AppImages.bellImg,),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.20,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  AppImages.fruitImage,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Categories",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.black),
              ),
              Container(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: MediaQuery.of(context).size.height * 0.12,
                            width: MediaQuery.of(context).size.width * 0.20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: data[index].color),
                            child: data[index].image,
                          ),
                          Text(
                            data[index].title,
                            style: TextStyle(color: ColorConstants.black, fontSize: 14),
                          )
                        ],
                      );
                    }),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fresh From The Farm",
                        style: TextStyle(
                            color: ColorConstants.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "eat fresh stay healthy",
                        style:
                        TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProductScreen()),
                      );
                    },
                    child: Text(
                      "View All",
                      style: TextStyle(
                          color:HexColor("#09B44D"), fontSize: 12),
                    ),
                  )
                ],
              ),
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

class Data{
  String title;
  Color color;
  Widget image;
  Data({this.title,this.image,this.color});
}
