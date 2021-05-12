import 'package:comm_resources/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:curved_bottom_navigation/curved_bottom_navigation.dart';
import 'itemScreen.dart';

class MainScreen extends StatefulWidget {
  static String id = '/mainScreen';
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int navPos = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: navPos,
            children: [
              Page1(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CurvedBottomNavigation(
              selected: navPos,
              onItemClick: (i) {
                setState(() {
                  navPos = i;
                });
              },
              items: [
                Icon(FontAwesomeIcons.home, color: secolor),
                Icon(FontAwesomeIcons.cartPlus, color: secolor),
                Icon(FontAwesomeIcons.plus, color: secolor),
                Icon(FontAwesomeIcons.user, color: secolor)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

