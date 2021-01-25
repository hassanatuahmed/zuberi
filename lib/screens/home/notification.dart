import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Column(
          children: [
            SizedBox(height: 24,),

            Row(
              children: [
                SizedBox(width: 33,),


                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },

                    child: Icon(Icons.chevron_left)),
                SizedBox(width: 130,),
                Text("Notification",style: TextStyle(
                  fontSize: 12,
                  fontFamily: "CeraGR-Regular",
                ),),

              ],
            ),
            SizedBox(height: 38,),
            Text("Send notifications when"),
            Row(
              children: [
                Text("Funds are available"),


              ],
            ),
            Row(
              children: [
                Text("Deductions have been made"),


              ],
            ),
            Row(
              children: [
                Text("Updates are available"),


              ],
            )
          ],
        ),
      ),
    );
  }
}
