import 'package:flutter/material.dart';
import 'package:Fresh_Kart_User/constants/assets.dart';
import 'package:Fresh_Kart_User/constants/color.dart';
import 'package:Fresh_Kart_User/helper_widgets/custom_button.dart';
import 'package:Fresh_Kart_User/helper_widgets/helper_utilities.dart';
import 'package:Fresh_Kart_User/screens/addAddress_screen.dart';

class AddressesScreen extends StatefulWidget {
  @override
  _AddressesScreenState createState() => _AddressesScreenState();
}

class _AddressesScreenState extends State<AddressesScreen> {
  List image = [AppImages.briefcaseImg, AppImages.homeImg];
  List title = ["Office", "Home"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              HelperUtility.appBar(title: "Addresses",color: ColorConstants.black,context: context,width: 100),
              SizedBox(height: 30,),
              ListView.builder(
                shrinkWrap: true,
                itemCount: image.length,
                  itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.all(20),

                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black,width: 0.5)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(image[index],height: 20,width: 20,),
                            SizedBox(width: 8,),
                            Text(
                              title[index],
                              style: TextStyle(
                                  color: ColorConstants.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),SizedBox(height: 5,),
                        Text(
                          "126 B block,Babu Khan Estate,Ist floor,Hyderabad 5001",
                          style: TextStyle(
                              color: ColorConstants.black,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          "+91 2345678987",
                          style: TextStyle(
                              color: ColorConstants.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5,),
                        Divider(
                          height: 2,
                          color: Colors.grey,
                          thickness: 0.5,
                        ),
                        SizedBox(height: 8,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(AppImages.editImg,height: 15,width: 20,),
                            SizedBox(width: 5,),
                            Text(
                              "EDIT",
                              style: TextStyle(
                                  color: ColorConstants.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),

                            SizedBox(width: 50,),
                            Container(
                              height: 20,
                              width: 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorConstants.grey.withOpacity(0.3)
                              ),
                            ),
                            SizedBox(width: 50,),
                            Image.asset(AppImages.deleteImg,height: 15,width: 20,),
                            SizedBox(width: 5,),
                            Text(
                              "DELETE",
                              style: TextStyle(
                                  color: ColorConstants.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),


                      ],
                    ),
                  );
              }),
              Spacer(),
              CustomButton(bttnText: "Add New Address",ontap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddAddressScreen()),
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}
