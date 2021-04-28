import 'package:flutter/material.dart';
import '../../navigation/navigationDrawer.dart';

class hotelsPage extends StatelessWidget {
  static const String routeName = '/hotels';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Hotels"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("Here comes hotels")));
  }
}
