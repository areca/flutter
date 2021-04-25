import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'homepage.dart';
import '../util/constants.dart';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Splash> {
  @override
  void initState() {
    //set time to load the new page
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 300,
                width: 300,
                child: Lottie.asset('assets/splashback.json')),
            SizedBox(height: 20),
            Text(
              "AirCenter 8",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Loading..",
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                  color: Colors.amber),
            ),
          ],
        ),
      ),
    );
  }
}
