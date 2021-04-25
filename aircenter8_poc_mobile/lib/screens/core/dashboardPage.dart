import 'package:flutter/material.dart';
import '../../navigation/navigationDrawer.dart';

class dashboardPage extends StatelessWidget {
  static const String routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("Here comes some statistics and graphs")));
  }
}
