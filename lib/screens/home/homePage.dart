import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zuberi/screens/home/account.dart';
import 'package:zuberi/screens/home/history.dart';
import 'package:zuberi/screens/home/saving.dart';

import '../walkThrough.dart';
import 'explore.dart';


class PortalMainScreen extends StatefulWidget {
  @override
  _PortalMainScreenState createState() => _PortalMainScreenState();
}

class _PortalMainScreenState extends State<PortalMainScreen> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[

    HistoryPage(),
    ExplorePage(),
    WalkThrough(),
    SavingPage(),

    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,


        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              color: Colors.grey,
            ),
            title: Text('History',style: TextStyle(
              color: HexColor("FF0F80").withOpacity(1.0),

            ),),
            activeIcon: Icon(
              Icons.perm_identity,
              color: HexColor("FF0F80").withOpacity(1.0),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: Colors.grey,
            ),
            title: Text('Explore',style: TextStyle(
              color: HexColor("FF0F80").withOpacity(1.0),

            ),),
            activeIcon: Icon(
              Icons.explore,
              color: HexColor("FF0F80").withOpacity(1.0),
            ),
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            title: Text('home'),
            activeIcon: Icon(
              Icons.home,
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.inbox,
              color: Colors.grey,
            ),
            title: Text('Saving'),
            activeIcon: Icon(
              Icons.motorcycle,
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.perm_identity,
              color: Colors.grey,
            ),
            title: Text('Account',style: TextStyle(
              color: HexColor("FF0F80").withOpacity(1.0),

            ),),
            activeIcon: Icon(
              Icons.perm_identity,
              color: HexColor("FF0F80").withOpacity(1.0),
            ),
          ),


        ],

        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },


      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

}


