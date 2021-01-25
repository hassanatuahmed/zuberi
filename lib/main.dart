import 'package:flutter/material.dart';
import 'package:zuberi/screens/SetPasswordLast.dart';
import 'package:zuberi/screens/congratuation.dart';
import 'package:zuberi/screens/enterOtp.dart';
import 'package:zuberi/screens/getStarted.dart';
import 'package:zuberi/screens/home/bankInfo.dart';
import 'package:zuberi/screens/home/changePassword.dart';
import 'package:zuberi/screens/home/homePage.dart';
import 'package:zuberi/screens/logi.dart';
import 'package:zuberi/screens/setPassword.dart';
import 'package:zuberi/screens/walkThrough.dart';
import 'file:///C:/Users/Turae/Documents/project/flutter%20applications/zuberi/lib/screens/splashScreen.dart';

import 'screens/secondSplash.dart';

void main()=>runApp(Myapp ());

class Myapp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WalkThrough(),
    );
  }

}
