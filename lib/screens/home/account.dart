import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zuberi/screens/getStarted.dart';
import 'package:zuberi/screens/home/changePassword.dart';
import 'package:zuberi/screens/home/editProfile.dart';
class AccountPage extends StatefulWidget {

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.0,top: 50.0,bottom: 30.0),
              child: Text("User profile",style: TextStyle(
                color: HexColor("#2D00D3"),
                fontFamily: "Visby CF",
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,

              ),),
            ),
            Row(
              children: [
                SizedBox(width: 30,),
                Image.asset("asset/images/Ellipse.png",scale: 2,),
                Column(
                  children: [

                    Padding(
                      padding:  EdgeInsets.only(right:37.0),
                      child: Text("Eugene Ming",style: TextStyle(
                        color: HexColor("000000").withOpacity(1.0),
                        fontFamily: "CeraGR-Bold",
                        fontSize: 18,

                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,

                      ),),
                    ),
                    SizedBox(height: 2,),
                    Text("Fidelity Bank, Accra Ghana",style: TextStyle(
                          color: HexColor("000000").withOpacity(0.3),
                          fontFamily: "CeraGR-Medium",
                          fontSize: 12,

                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w700,

    ),),

                    SizedBox(height: 7,),
                    Padding(
                      padding:  EdgeInsets.only(left:49.0),
                      child: Text("eugeneming@fidelitybank.com",style: TextStyle(
                        color: HexColor("000000").withOpacity(1.0),
                        fontFamily: "CeraGR-Regular",
                        fontSize: 14,

                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,

                      ),),
                    ),
                    SizedBox(height: 7,),


                  ],
                ),


              ],
            ),
            Padding(
              padding:  EdgeInsets.only(left:140.0),
              child: Text("+233 55 876 71 22",style: TextStyle(
                color: HexColor("000000").withOpacity(1.0),
                fontFamily: "CeraGR-Regular",
                fontSize: 14,

                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,

              ),),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 150,),
                Image.asset("asset/images/edit.png"),
                SizedBox(width: 5,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfile(),
                        fullscreenDialog: true)
                    );
                  },
                  child: Text("Edit Profile",style: TextStyle(
                    color: HexColor("FF0F80").withOpacity(1.0),
                    fontFamily: "CeraGR-Medium",
                    fontSize: 12,

                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,

                  ),),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left:40.0,right: 40.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                SizedBox(width: 33,),
                Icon(Icons.history,color: HexColor("2D00D3").withOpacity(1.0),),
                SizedBox(width: 6,),
                Text("Transaction History",style: TextStyle(
                  color: HexColor("2D00D3").withOpacity(1.0),
                  fontFamily: "CeraGR-Regular",
                  fontSize: 14,
                ),),
                SizedBox(width: 130,),
                Icon(Icons.file_download,color: HexColor("FF0F80").withOpacity(1.0),),
                SizedBox(width: 6,),

                Text("Download",style: TextStyle(
                  fontFamily: "Visby CF",
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: HexColor("FF0F80").withOpacity(1.0),                ),),
              ],
            ),
            SizedBox(height: 15,),

            Padding(
              padding: EdgeInsets.only(left:40.0,right: 40.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top:30.0,left: 33.0),
              child: Text("Account",style: TextStyle(
                color: HexColor("#000000").withOpacity(1.0),
                fontFamily: "CeraGR-Bold",
                fontSize: 18,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,

              ),),
            ),
            Padding(
              padding: EdgeInsets.only(left:33.0,right: 33.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                SizedBox(width: 33,),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePassword()));
                  },
                  child: Text("Change password",style: TextStyle(
                    color: HexColor("#000000").withOpacity(0.3),
                    fontFamily: "CeraGR-Regular",
                    fontSize: 14,
                    fontStyle: FontStyle.normal,

                  ),),
                ),
                SizedBox(width: 240,),
                Icon(Icons.chevron_right,color: HexColor("#000000").withOpacity(0.3),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left:33.0,right:33.0),
              child: Divider(color: Colors.black,),
            ),
            Row(
              children: [
                SizedBox(width: 33,),
                Text("Bank Information",style: TextStyle(
                  color: HexColor("#000000").withOpacity(0.3),
                  fontFamily: "CeraGR-Regular",
                  fontSize: 14,
                  fontStyle: FontStyle.normal,

                ),),
                SizedBox(width: 240,),

                Icon(Icons.chevron_right,color: HexColor("#000000").withOpacity(0.3),
                ),

              ],
            ),
            Padding(
              padding: EdgeInsets.only(left:30.0,right:30.0),
              child: Divider(
                color: Colors.black,
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(top:30.0,left: 33.0),
              child: Text("Settings",style: TextStyle(
                color: HexColor("#000000").withOpacity(1.0),
                fontFamily: "CeraGR-Bold",
                fontSize: 18,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,

              ),),
            ),
            Padding(
              padding: EdgeInsets.only(left:33.0,right:33.0),
              child: Divider(color: Colors.black,),
            ),

            Row(
              children: [
                SizedBox(width: 33,),

                Text("Notifications",style: TextStyle(
                  color: HexColor("#000000").withOpacity(0.3),
                  fontFamily: "CeraGR-Regular",
                  fontSize: 14,
                  fontStyle: FontStyle.normal,

                ),),
                SizedBox(width: 270,),
                Icon(Icons.chevron_right,color: HexColor("#000000").withOpacity(0.3),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(left:30.0,right:30.0),
              child: Divider(
                color: Colors.black,
              ),
            ),


            Padding(
              padding:  EdgeInsets.only(top:30.0,left: 33.0),
              child: Text("Support",style: TextStyle(
                color: HexColor("#000000").withOpacity(1.0),
                fontFamily: "CeraGR-Bold",
                fontSize: 18,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,

              ),),
            ),
      Padding(
        padding: EdgeInsets.only(left:40.0,right: 40.0),
        child: Divider(
          color: Colors.black,
        ),),

            Row(
              children: [
                SizedBox(width: 33,),

                Text("Help Centre",style: TextStyle(
                  color: HexColor("#000000").withOpacity(0.3),
                  fontFamily: "CeraGR-Regular",
                  fontSize: 14,
                  fontStyle: FontStyle.normal,

                ),),
                SizedBox(width: 270,),
                Icon(Icons.chevron_right,color: HexColor("#000000").withOpacity(0.3),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left:33.0,right:33.0),
              child: Divider(color: Colors.black,),
            ),

            Padding(
              padding:  EdgeInsets.only(top:30.0,left: 33.0),
              child: Text("About",style: TextStyle(
                color: HexColor("#000000").withOpacity(1.0),
                fontFamily: "CeraGR-Bold",
                fontSize: 18,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,

              ),),
            ),

            Padding(
              padding: EdgeInsets.only(left:33.0,right: 33.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                SizedBox(width: 33,),

                Text("Version",style: TextStyle(
                  color: HexColor("#000000").withOpacity(0.3),
                  fontFamily: "CeraGR-Regular",
                  fontSize: 14,
                  fontStyle: FontStyle.normal,

                ),),
                SizedBox(width: 285,),
                Text("0.12",style: TextStyle(
                  color: HexColor("#000000").withOpacity(0.3),
                  fontFamily: "CeraGR-Regular",
                  fontSize: 14,
                  fontStyle: FontStyle.normal,

                ),),

              ],
            ),
            Padding(
              padding: EdgeInsets.only(left:33.0,right:33.0),
              child: Divider(color: Colors.black,),
            ),
            Row(
              children: [
                SizedBox(width: 33,),
                Text("Terms of use",style: TextStyle(
                  color: HexColor("#000000").withOpacity(0.3),
                  fontFamily: "CeraGR-Regular",
                  fontSize: 14,
                  fontStyle: FontStyle.normal,

                ),),
                SizedBox(width: 265,),

                Icon(Icons.chevron_right,color: HexColor("#000000").withOpacity(0.3),
                ),

              ],
            ),
            Padding(
              padding: EdgeInsets.only(left:30.0,right:30.0),
              child: Divider(
                color: Colors.black,
              ),
            ),

            Row(
              children: [
                SizedBox(width: 33,),
                Text("Privacy",style: TextStyle(
                  color: HexColor("#000000").withOpacity(0.3),
                  fontFamily: "CeraGR-Regular",
                  fontSize: 14,
                  fontStyle: FontStyle.normal,

                ),),
                SizedBox(width: 299,),

                Icon(Icons.chevron_right,color: HexColor("#000000").withOpacity(0.3),
                ),

              ],
            ),
            Padding(
              padding: EdgeInsets.only(left:30.0,right:30.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            SizedBox(height: 50,),


            Padding(
              padding:  EdgeInsets.only(left:30.0,right:30.0),
              child: Container(
                height: 60,
                width: 294,
                child: MyButton(
                  textColor: Colors.white,
                  color: HexColor("2D00D3").withOpacity(1.0),

                  text: "Log out",
              ),),
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
