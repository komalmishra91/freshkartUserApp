import 'package:flutter/material.dart';
import 'package:Fresh_Kart_User/constants/assets.dart';
import 'package:Fresh_Kart_User/constants/color.dart';
import 'package:Fresh_Kart_User/helper_widgets/custom_button.dart';
import 'package:Fresh_Kart_User/helper_widgets/custom_textfield.dart';
import 'package:Fresh_Kart_User/helper_widgets/helper_utilities.dart';
import 'package:Fresh_Kart_User/screens/payment_screen.dart';
import 'package:intl/intl.dart';

class AddAddressScreen extends StatefulWidget {
  @override
  _AddAddressScreenState createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController dobController = TextEditingController();

  DateTime selectedDate = DateTime.now();
  String formattedDate;
  List txt = ["Home","Office","Other"];
  int selectedIndex ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              HelperUtility.appBar(color: ColorConstants.black,context: context,title: "Enter Details",width: 80),
              SizedBox(height: 50,),
              CustomTextField(
                controller: nameController,
                helperTxt: "Full Name",
                textInputAction: TextInputAction.next,
                inputType: TextInputType.name,
              ),
              SizedBox(height: 15,),

              CustomTextField(
                controller: emailController,
                helperTxt: "Email Address",
                textInputAction: TextInputAction.next,
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 15),
              CustomTextField(
                controller: phoneNoController,
                helperTxt: "Mobile Number",
                textInputAction: TextInputAction.next,
                inputType: TextInputType.phone,
              ),
              SizedBox(height: 15,),
              CustomTextField(
                controller: addressController,
                helperTxt: "Address",
                textInputAction: TextInputAction.done,
                inputType: TextInputType.streetAddress,
              ),
              SizedBox(height: 15,),
              CustomTextField(
                controller: dobController,
                readonly: true,
                helperTxt: "Date of Birth",
                suffixIcon: Container(
                  height: 5,width: 5,
                  margin: EdgeInsets.all(14),

                  child: Image.asset(AppImages.calendarImg,fit: BoxFit.cover,),
                ),
                ontap: () async {
                 await  selectDate(context);
                },
              ),


             Container(
               height: 50,

               width: MediaQuery.of(context).size.width,
               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                 itemCount: 3,
                 itemBuilder: (context,indxex){
                   return  InkWell(
                     onTap: (){
                       setState(() {
                         selectedIndex = indxex;
                       });
                     },
                     child: Container(
                       padding: EdgeInsets.only(right: 30),
                       child: Row(
                         children: [
                           Icon(selectedIndex == indxex?Icons.check_box:Icons.check_box_outline_blank,color: selectedIndex == indxex?ColorConstants.primaryColor:Colors.grey,size: 20,),
                           SizedBox(width: 5,),
                           Text(
                             txt[indxex],
                             style: TextStyle(
                                 color: ColorConstants.black,
                                 fontSize: 15,
                                 fontWeight: FontWeight.normal),
                           ),
                         ],
                       ),
                     ),
                   );
                 },
               ),
             ),
              SizedBox(height: 30,),
              CustomButton(bttnText: "Save",ontap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentScreen()),
                );
              },)
            ],
          ),
        ),
      ),
    );
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
         formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
        dobController.text = formattedDate;
      });
  }
}
