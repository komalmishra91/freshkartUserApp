import 'package:flutter/material.dart';

class HelperUtility{




    static appBar({String title,Color color,context,double width}){
    return Row(
      children: [
        InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back,color: color,size: 25,)),
        SizedBox(width: width,),
        Text(title,style: TextStyle(color: color,fontSize: 18,fontWeight: FontWeight.bold),),
      ],
    );
  }
}