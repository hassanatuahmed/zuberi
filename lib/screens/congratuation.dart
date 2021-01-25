import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zuberi/screens/walkThrough.dart';
import 'package:zuberi/screens/walkThroughOne.dart';


class CongratulationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 201,),
              Container(child: Image.asset("asset/images/check-circle.png")),
              SizedBox(height: 20,),
              Text("Congratulations",style: TextStyle(
                color: HexColor("#2D00D3"),
                fontFamily: "Visby CF",
                fontSize: 24,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,

              ),),
              SizedBox(height: 20,),
              Container(
                height: 42,
                width: 243,
                child: Text("  You have successfully signed on Zuberi, a world of wonders awaits.",style: TextStyle(
                fontFamily: "Visby CF",
                fontSize: 14,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,),textAlign: TextAlign.center,),),

              SizedBox(height: 200,),

              GestureDetector(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>WalkThrough()));},
                child: Text("Dismiss",style: TextStyle(
                  color: HexColor("FF0F80").withOpacity(1.0),
                  fontFamily: "Visby CF",
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,),textAlign: TextAlign.center,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
