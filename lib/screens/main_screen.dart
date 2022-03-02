import 'package:flutter/material.dart';
import 'package:Fresh_Kart_User/constants/assets.dart';
import 'package:Fresh_Kart_User/screens/addAddress_screen.dart';
import 'package:Fresh_Kart_User/screens/cart_screen.dart';
import 'package:Fresh_Kart_User/screens/home_screen.dart';
import 'package:Fresh_Kart_User/screens/orders_screen.dart';
import 'package:Fresh_Kart_User/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List screens = [HomeScreen(), OrdersScreen(), SearchScreen(), CartScreen()];
  List image = [AppImages.homeIcon, AppImages.categoriesImg, AppImages.searchImg, AppImages.cartImg];
  List title = ["Home", "Categories", "Search", "Basket"];

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: PhysicalModel(
        color: Colors.white,
        elevation: 15,
        child: Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.08,
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                color: Colors.white,

            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
                itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: 18,right: 18),
                    child: Column(

                      children: [
                        _selectedIndex == index?Image.asset(AppImages.rectImg,height: 5,):SizedBox(),

                        SizedBox(height: 10,),
                        Image.asset(image[index],height: 20,width: 20,color:  _selectedIndex==index?Colors.green:Colors.grey,),
                        Text(title[index],style: TextStyle(color: Colors.grey,fontSize: 12),)
                      ],
                    ),
                  ),
                );
                })
        ),
      ),
      body: Center(
        child: screens[_selectedIndex],
      ),
    );
  }



}

