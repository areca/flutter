import 'package:flutter/material.dart';
import '../../navigation/navigationDrawer.dart';

class umPage extends StatelessWidget {
  static const String routeName = '/usermanagement';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("User Management"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("This is user management page")));
  }
}
