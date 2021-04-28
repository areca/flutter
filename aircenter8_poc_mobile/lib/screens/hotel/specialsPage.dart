import 'package:flutter/material.dart';
import '../../navigation/navigationDrawer.dart';

class specialsPage extends StatelessWidget {
  static const String routeName = '/specials';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Specials"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("Here comes specials")));
  }
}
