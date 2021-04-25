import 'package:flutter/material.dart';
import '../util/constants.dart';

Widget createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/cool-background.png'))),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Welcome to AirCenter 8",
                style: TextStyle(
                    color: kheaderTextColor,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500))),
      ]));
}
