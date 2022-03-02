import 'package:flutter/material.dart';
import 'package:Fresh_Kart_User/constants/color.dart';
import 'package:Fresh_Kart_User/helper_widgets/helper_utilities.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List title = ["Broccoli", "Apple", "Carrot", "Banana","Lemon"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              HelperUtility.appBar(title: "Search",color: ColorConstants.black,context: context,width: 120),
              SizedBox(height: 20,),
              ListView.builder(
                shrinkWrap: true,
                itemCount: title.length,
                  itemBuilder: (context,index){
                return Container(
                  padding: EdgeInsets.only(top: 15,bottom: 15),
                      child: Text(title[index],style: TextStyle(color: ColorConstants.black,fontSize: 15,fontWeight: FontWeight.normal),),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: ColorConstants.grey.withOpacity(0.4)
                      )
                    )
                  ),
                    );
              })
            ],
          ),
        ),
      ),
    );
  }
}
