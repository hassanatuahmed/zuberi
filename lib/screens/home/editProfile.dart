import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../getStarted.dart';
import 'otp_active.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 24,),

            Row(
              children: [
                SizedBox(width: 33,),


                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },

                    child: Icon(Icons.chevron_left)),
                SizedBox(width: 130,),
                Text("Edit Profile",style: TextStyle(
                  fontSize: 12,
                  fontFamily: "CeraGR-Regular",
                ),),

              ],
            ),
            SizedBox(height: 38,),
            Image.asset("asset/images/Ellipse.png"),
            SizedBox(height: 20,),


               Text("Change profile photo",style: TextStyle(
                fontSize: 14,
                color: HexColor("2D00D3").withOpacity(1.0),
                fontFamily: "CeraGR-Medium",
              ),),

            SizedBox(height: 50,),

            Padding(
              padding: EdgeInsets.only(right:310.0),
              child: Text("First Name",style: TextStyle(
                fontFamily: "CeraGR-Medium",
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: HexColor("000000").withOpacity(1.0),
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(right:33.0,left:33.0),
              child: TextFormField(
                keyboardType: TextInputType.name,

                decoration: InputDecoration(
                  hintText: "Eugine"
                ),
              ),
            ),
            SizedBox(height: 34,),
            Padding(
              padding: EdgeInsets.only(right:310.0),
              child: Text("LastName",style: TextStyle(
                fontFamily: "CeraGR-Medium",
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: HexColor("000000").withOpacity(1.0),
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(right:33.0,left:33.0),
              child: TextFormField(
                keyboardType: TextInputType.name,

                decoration: InputDecoration(
                    hintText: "Eugine"
                ),
              ),
            ),
            SizedBox(height: 34,),

            Padding(
              padding: EdgeInsets.only(right:330.0),
              child: Text("Phone",style: TextStyle(
                fontFamily: "CeraGR-Medium",
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: HexColor("000000").withOpacity(1.0),
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(right:33.0,left:33.0),
              child: TextFormField(
                keyboardType: TextInputType.phone,

                decoration: InputDecoration(
                    hintText: "+233 55 876 71 22"
                ),
              ),
            ),
            SizedBox(height: 34,),

            Padding(
              padding: EdgeInsets.only(right:330.0),
              child: Text("Email",style: TextStyle(
                fontFamily: "CeraGR-Medium",
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: HexColor("000000").withOpacity(1.0),
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(right:33.0,left:33.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(

                    hintText: "hassanatuahmed05@gmail.com"
                ),
              ),
            ),
            SizedBox(height: 47,),
            Container(
              height: 60,
              width: 360,
              child: MyButton(
                onPressed: (){
                  _updateBottomSheet(context);
                },
                textColor: Colors.white,
                color: HexColor("2D00D3").withOpacity(1.0),

                text: "Update",
              ),),




          ],
        ),
      ),
    );
  }
}

void _updateBottomSheet(context){
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext bc){
        return Container(
          color: HexColor("E03838").withOpacity(1.0),
          child: Wrap(
            children:<Widget> [
              Column(
                children: [
                  SizedBox(height: 30,),
                  Center(
                    child: Text("Make sure eugene@fidelity.com",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: "CeraGR-Medium",
                    ),textAlign: TextAlign.center,),
                  ),
                  Container(
                    height: 54,
                      width: 229,
                      child: Center(
                        child: Text("is your valid work email address on file. You won’t be able to access account without it.",style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "CeraGR-Medium",
                        ),textAlign: TextAlign.center,),
                      ),),
                  SizedBox(height: 20,),
                  Center(
                    child: Container(
                      height: 60,
                      width: 228,
                      child: MyButton(
                        textColor: Colors.black,
                        color: Colors.white,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ActiveOtp()));
                        },

                        text: "Verify Email",
                      ),),
                  ),
                  SizedBox(height: 20,),

                ],
              ),
            ],
          ),
        );
      }
  );
}
