import 'package:flutter/material.dart';
import '../../navigation/navigationDrawer.dart';

class packagesPage extends StatelessWidget {
  static const String routeName = '/packages';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Packages"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("Here comes packages")));
  }
}
