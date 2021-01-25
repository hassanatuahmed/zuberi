import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zuberi/screens/SetPasswordLast.dart';

import 'getStarted.dart';

class SetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 70,),
              Padding(
                padding: EdgeInsets.only(right:200.0),
                child: Text("Hello, Eugene",style: TextStyle(
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

                  child: Text("Welcome, set your password and you’ll be all set to access your funds",style: TextStyle(
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
                height: 48,
                width: 320,
                child: MyText(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  hintText: "  Password",
                ),
              ),
              SizedBox(height: 17,),
              Container(
                height: 48,
                width: 320,
                child: MyText(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  hintText: "  Confirm Password",
                ),
              ),
              SizedBox(height: 17,),

              Container(
                height: 48,
                width: 320,
                child: MyButton(
                  onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SetPasswordLast()));
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
