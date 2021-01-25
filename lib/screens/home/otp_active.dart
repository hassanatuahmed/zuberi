import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zuberi/screens/otp.dart';

import '../getStarted.dart';

class ActiveOtp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 70,),
              Text("Enter OTP",style: TextStyle(
                color: HexColor("#2D00D3"),
                fontFamily: "Visby CF",
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,

              ),),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 63,
                width: 273,

                child: Text("A four digit code has been sent to your phone. Enter is to complete adding your phone number.",style: TextStyle(
                  color: HexColor("#001514"),
                  fontFamily: "Visby CF",
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,

                ),textAlign: TextAlign.center,),
              ),
              SizedBox(height: 80,),
              Container(
                height: 3,

                child: Myotp(),
              ),
              SizedBox(height: 42,),



              Container(
                height: 48,
                width: 320,
                child: MyButton(
                  onPressed: (){},
                  color: HexColor("2D00D3").withOpacity(1.0),
                  textColor: Colors.white,

                  text: "Confirm",
                ),
              ),
              SizedBox(height: 25,),

            ],
          ),
        ),
      ),
    );
  }
}
