import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zuberi/screens/getStarted.dart';


class SecondSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("asset/images/backgroundImage.png"),
              fit: BoxFit.cover
          ),
        ),
        child:
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top:140.0,bottom: 14.4),
              child: Container(
                child: Image.asset("asset/images/full.png"),
              ),
            ),
            Text("Access your salary anyday, anytime.",style: TextStyle(
              color: HexColor("#FFFFFF"),
              fontFamily: "Visby CF",
              fontSize: 14,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,

            ),),
            SizedBox(height: 465,),
            Container(
              height: 48,
              width: 320,
              child: MaterialButton(
                color: HexColor("#2D00D3"),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>GetStarted()));
                },
                child: Text("Get Started",style: TextStyle(
                  color: HexColor("#FFFFFF"),
                  fontFamily: "Visby CF",
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,),),
              ),
            ),
          ],
        ),
      ),

    );
  }
}