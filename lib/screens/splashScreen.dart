import 'package:flutter/material.dart';
import 'dart:async';

import 'package:zuberi/screens/secondSplash.dart';



class SplashScreen extends StatelessWidget {
  @override
  void initState() {
    super.initState();
    startTime()
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => SecondSplash()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/images/splash.png"),
            fit: BoxFit.cover
          ),
        ),
      ),

    );
  }
}
