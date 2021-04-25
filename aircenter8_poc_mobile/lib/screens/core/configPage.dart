import 'package:flutter/material.dart';
import '../../navigation/navigationDrawer.dart';

class configPage extends StatelessWidget {
  static const String routeName = '/config';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Config Service"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("Hey! this is config service page")));
  }
}
