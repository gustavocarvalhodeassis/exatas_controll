import 'package:exatas_controll/Screens/card.dart';
import 'package:exatas_controll/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'Screens/add.dart';
import 'Screens/chart.dart';
import 'Screens/dash.dart';
import 'Screens/user.dart';

int selectedIndex = 0;

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  List<Widget> _currentIndex = <Widget>[
    Dash(),
    Chart(),
    Add(),
    CardBank(),
    User()
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(
          height: size.height * 1,
          width: size.width * 1,
          child: _currentIndex.elementAt(selectedIndex),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: CustomizedBottomNavBar(),
        ),
      ]),
    );
  }
}
