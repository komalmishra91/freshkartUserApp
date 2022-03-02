import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Fresh_Kart_User/constants/color.dart';
import 'package:Fresh_Kart_User/helper_widgets/custom_button.dart';
import 'package:Fresh_Kart_User/helper_widgets/helper_utilities.dart';
import 'package:Fresh_Kart_User/screens/home_screen.dart';
import 'package:Fresh_Kart_User/screens/main_screen.dart';
import 'package:rating_bar/rating_bar.dart';

class ReviewScreen extends StatefulWidget {
  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  double _rating =0.0;
  TextEditingController descriptionController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(

            children: [
              HelperUtility.appBar(title: "Add Review",context: context,color: CupertinoColors.black,width: 80),
              SizedBox(height: 50,),
              Center(child: Text("Rate your stay",style: TextStyle(color: CupertinoColors.black,fontSize: 14,fontWeight: FontWeight.normal),)),
              RatingBar(
                onRatingChanged: (rating) => setState(() => _rating = rating),
                filledIcon: Icons.star,
                initialRating: 1,
                emptyIcon: Icons.star_border,
                halfFilledIcon: Icons.star_half,
                isHalfAllowed: true,
                filledColor: Colors.yellow.shade700,
                emptyColor: Colors.grey,

                size: 50,
              ),
              SizedBox(height: 30,),
              Text("Your Review",style: TextStyle(color: CupertinoColors.black,fontSize: 15,fontWeight: FontWeight.normal),),
              SizedBox(height: 10,),
              TextField(
                controller: descriptionController,
                maxLines: 8,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 10,left: 10),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                    color: Colors.black),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Colors.black),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Colors.black),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  hintText: "Write your experience here",
                  hintStyle: TextStyle(color:ColorConstants.grey,fontSize: 12)
                ),
              ),
              SizedBox(height: 50,),
              CustomButton(bttnText: "Submit",ontap: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MainScreen()),
                );
              },),
            ],
          ),
        ),
      ),
    );
  }
}
