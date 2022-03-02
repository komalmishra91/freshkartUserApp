import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomTextField extends StatelessWidget {
  Function ontap;
  String bttnText;
  TextEditingController controller;
  TextInputType inputType;
  TextInputAction textInputAction;
  Widget suffixIcon;
  String helperTxt;
  bool readonly;


  CustomTextField({this.bttnText,this.ontap,this.controller,this.inputType,this.textInputAction,this.suffixIcon,this.helperTxt,this.readonly = false});
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap:ontap,
      controller: controller,
      keyboardType: inputType,
      textInputAction: textInputAction,
      readOnly: readonly,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: HexColor("#D8D8D8"),
            width: 1
          ),


        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: HexColor("#D8D8D8"),
              width: 1
          ),


        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: HexColor("#D8D8D8"),
              width: 1
          ),


        ),
        contentPadding: EdgeInsets.only(left: 10),
        suffixIcon: suffixIcon,
        hintText: helperTxt,
        hintStyle: TextStyle(color: HexColor("#515151").withOpacity(0.5),fontWeight: FontWeight.normal,fontSize: 15)
      ),
    );
  }
}