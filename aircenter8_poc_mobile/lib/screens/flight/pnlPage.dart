import 'package:flutter/material.dart';
import '../../navigation/navigationDrawer.dart';

class pnlPage extends StatelessWidget {
  static const String routeName = '/pnl';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Passenger Name List"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("Here comes pax list of a flight")));
  }
}
