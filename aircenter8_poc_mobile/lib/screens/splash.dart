import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'core/dashboardPage.dart';
//import '../util/constants.dart';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Splash> {
  @override
  void initState() {
    //set time to load the new page
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => dashboardPage()));
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
            DefaultTextStyle(
              style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                  color: Colors.amber),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'One stop tool for travel industry',
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
