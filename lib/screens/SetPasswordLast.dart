import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zuberi/screens/enterOtp.dart';

import 'getStarted.dart';

class SetPasswordLast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 70,),
              Padding(
                padding: EdgeInsets.only(right:190.0),
                child: Text("One last thing",style: TextStyle(
                  color: HexColor("#2D00D3"),
                  fontFamily: "Visby CF",
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,

                ),),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:  EdgeInsets.only(right:30.0),
                child: Container(
                  height: 42,
                  width: 290,

                  child: Text("We’ll neeed your phone number so we can easily contact you",style: TextStyle(
                    color: HexColor("#001514"),
                    fontFamily: "Visby CF",
                    fontSize: 14,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,

                  ),),
                ),
              ),
              SizedBox(height: 22,),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: HexColor("#2D00D3").withOpacity(0.6)),
                ),
                height: 48,
                width: 320,
                child: Row(
                  children: [
                    SizedBox(width: 3,),
                    Container(

                        child: Text("+233"),),
                    SizedBox(width: 20,),
                    Container(
                      height: 48,
                      width: 260,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter phone",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17,),

              Container(
                height: 48,
                width: 320,
                child: MyButton(
                  onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterOtp()));
                  },
                  color: HexColor("F3F3F6").withOpacity(1.0),
                  textColor: HexColor("000000").withOpacity(1.0),

                  text: "Proceed",
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
