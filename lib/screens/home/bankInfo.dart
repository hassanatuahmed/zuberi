import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../getStarted.dart';
import 'otp_active.dart';

class EditBankInfo extends StatefulWidget {
  @override
  _EditBankInfoState createState() => _EditBankInfoState();
}

class _EditBankInfoState extends State<EditBankInfo> {
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
                Text("Edit Bank Info",style: TextStyle(
                  fontSize: 12,
                  fontFamily: "CeraGR-Regular",
                ),),

              ],
            ),
            SizedBox(height: 38,),


            SizedBox(height: 50,),

            Padding(
              padding: EdgeInsets.only(right:140.0),
              child: Text("First Name (As it is on your bank account)",style: TextStyle(
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
              padding: EdgeInsets.only(right:300.0),
              child: Text("Bank Name",style: TextStyle(
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
                    hintText: "Fidelity Bank"
                ),
              ),
            ),
            SizedBox(height: 34,),

            Padding(
              padding: EdgeInsets.only(right:330.0),
              child: Text("Branch",style: TextStyle(
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

                    hintText: "Accra Central"
                ),
              ),
            ),
            SizedBox(height: 34,),

            Padding(
              padding: EdgeInsets.only(right:280.0),
              child: Text("Account Number",style: TextStyle(
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

                    hintText: "2330449xxxxxxx"
                ),
              ),
            ),
            SizedBox(height: 28,),

            Text("Your HR will review this request and provide you with updates",style: TextStyle(
              color: HexColor("FF0F80").withOpacity(1.0),
            ),),

            SizedBox(height: 47,),
            Container(
              height: 60,
              width: 360,
              child: MyButton(
                onPressed: (){
                },
                textColor: Colors.white,
                color: HexColor("2D00D3").withOpacity(1.0),

                text: "Request Updates",
              ),),




          ],
        ),
      ),
    );
  }
}


