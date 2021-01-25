import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../getStarted.dart';
import 'otp_active.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
                    child: Icon(Icons.chevron_left,size: 30,)),
                SizedBox(width: 100,),
                Text("Change passowrd",style: TextStyle(
                  fontSize: 12,
                  fontFamily: "CeraGR-Regular",
                ),),

              ],
            ),
            SizedBox(height: 38,),



            Padding(
              padding: EdgeInsets.only(right:310.0,top: 50.0),
              child: Text("Old password",style: TextStyle(
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
              padding: EdgeInsets.only(right:300.0),
              child: Text("New Password",style: TextStyle(
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
                    hintText: "******"
                ),
              ),
            ),
            SizedBox(height: 34,),

            Padding(
              padding: EdgeInsets.only(right:250.0),
              child: Text("Repeat new password",style: TextStyle(
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
                    hintText: "******",
                ),
              ),
            ),
            SizedBox(height: 34,),


            SizedBox(height: 47,),
            Container(
              height: 60,
              width: 360,
              child: MyButton(
                onPressed: (){
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


