import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zuberi/screens/logi.dart';
import 'package:zuberi/screens/setPassword.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 70,),
              Padding(
                padding: EdgeInsets.only(right:218.0),
                child: Text("Get Started",style: TextStyle(
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

                  child: Text("Welcome to Zuberi, enter official (name@company.com) email to proceed",style: TextStyle(
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
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  hintText: "  Enter email",
                ),
              ),
              SizedBox(height: 17,),

              Container(
                height: 48,
                width: 320,
                child: MyButton(
                  onPressed: (){

                     Navigator.push(context, MaterialPageRoute(builder: (context)=>SetPassword()));
                  },
                  color: HexColor("F3F3F6").withOpacity(1.0),
                  textColor: HexColor("000000").withOpacity(1.0),

                  text: "Proceed",
                ),
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  SizedBox(width: 55,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                    child: Text("Already have an account?",style: TextStyle(
                      color: HexColor(" #2D00D3").withOpacity(1.0),

                      fontFamily: "CeraGR-Regular",
                      fontSize: 12,
                      fontStyle: FontStyle.normal,

                    ),),
                  ),
                  SizedBox(width: 7,),
                  GestureDetector(
                    onTap: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                    child: Text("Log In",style: TextStyle(
                      color: HexColor(" #2D00D3").withOpacity(1.0),

                      fontFamily: "CeraGR-Regular",
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,

                    ),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  MyButton({this.textColor,this.color,this.text,this.onPressed});
  final textColor;
  final color;
  final text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return  Container(

      child: MaterialButton(
        color: color,
        onPressed: onPressed,
        child: Text(text,style: TextStyle(
          color: textColor,
          fontFamily: "CeraGR-Medium",
          fontSize: 14,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,),),
      ),
    );
  }
}

class MyText extends StatefulWidget {
  MyText({this.hintText,this.obscureText=false,this.keyboardType});

  final hintText;
  final bool obscureText;
  final keyboardType;
  @override
  _MyTextState createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        border: Border.all(color: HexColor("#2D00D3").withOpacity(0.6)),
      ),

      child: TextFormField(
        keyboardType:widget.keyboardType,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          hintText:widget.hintText,
        ),
      ),
    );
  }
}

