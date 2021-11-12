import 'package:exatas_controll/home_body.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'constants.dart';

class CustomizedBottomNavBar extends StatefulWidget {
  const CustomizedBottomNavBar({Key? key}) : super(key: key);

  @override
  _CustomizedBottomNavBarState createState() => _CustomizedBottomNavBarState();
}

class _CustomizedBottomNavBarState extends State<CustomizedBottomNavBar> {
  bool isIndexed = false;

  void changeToDashScreen() {
    setState(() {
      selectedIndex = 0;
    });
  }

  void changeToChartScreen() {
    setState(() {
      selectedIndex = 1;
    });
  }

  void changeToAddScreen() {
    setState(() {
      selectedIndex = 2;
    });
  }

  void changeToCardBankScreen() {
    setState(() {
      selectedIndex = 3;
    });
  }

  void changeToUserScreen() {
    setState(() {
      selectedIndex = 4;
    });
  }

  Widget NavButton(IconData icon, isIndexed, bool isAddButton, void index) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          onTap: () {
            index;
            print(selectedIndex);
          },
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: isAddButton ? 0 : 8,
              horizontal: isAddButton ? 0 : 8,
            ),
            child: Icon(
              icon,
              size: isAddButton
                  ? 75
                  : isIndexed
                      ? 35
                      : 30,
              color: kSecondaryColor,
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
        padding: EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        height: 80,
        width: size.width * 1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kPrimaryColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavButton(Ionicons.grid, true, false, changeToDashScreen()),
            NavButton(Ionicons.pie_chart, false, false, changeToChartScreen()),
            NavButton(Ionicons.add_circle, false, true, changeToAddScreen()),
            NavButton(Ionicons.card, false, false, changeToCardBankScreen()),
            NavButton(
                Ionicons.person_circle, false, false, changeToUserScreen()),
          ],
        ),
      ),
    );
  }
}
