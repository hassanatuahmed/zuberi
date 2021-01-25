import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'getStarted.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 70,),
              Padding(
                padding: EdgeInsets.only(right:250.0),
                child: Text("Log in",style: TextStyle(
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
              SizedBox(height: 22,),
              Container(
                height: 48,
                width: 320,
                child: MyText(
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  hintText: "  Work email",
                ),
              ),
              SizedBox(height: 17,),
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
                child: MyButton(
                  onPressed: (){},
                  color: HexColor("F3F3F6").withOpacity(1.0),
                  textColor: HexColor("000000").withOpacity(1.0),

                  text: "Proceed",
                ),
              ),
              SizedBox(height: 25,),

                Padding(
                  padding: EdgeInsets.only(right:150.0),
                  child: Text("I have forgotten my password",style: TextStyle(
                    color: HexColor(" #2D00D3").withOpacity(1.0),

                    fontFamily: "CeraGR-Regular",
                    fontSize: 12,
                    fontStyle: FontStyle.normal,

                  ),),
                ),


            ],
          ),
        ),
      ),
    );
  }
}
