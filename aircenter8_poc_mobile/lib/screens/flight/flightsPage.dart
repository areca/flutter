import 'package:flutter/material.dart';
import '../../navigation/navigationDrawer.dart';

class flightsPage extends StatelessWidget {
  static const String routeName = '/schedule';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Flight Schedule"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("Here comes flight data")));
  }
}
