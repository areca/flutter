import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:lottie/lottie.dart';

import '../../navigation/navigationDrawer.dart';

class dashboardPage extends StatelessWidget {
  static const String routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    var flightData = [
      0.0,
      -1.0,
      0.3,
      0.4,
      0.2,
      0.2,
      0.0,
      0.0,
      0.3,
      0.4,
      0.2,
      0.2,
      -0.1,
      0.4,
      0.7,
      0.8,
      0.8
    ];
    var hotelData = [
      0.0,
      2.0,
      0.3,
      0.4,
      0.2,
      0.2,
      1.0,
      1.0,
      1.2,
      1.3,
      1.5,
      0.7,
      -0.1,
      -0.3,
      -0.4,
      0.0,
      1.0
    ];
    var specialsData = [
      0.0,
      0.0,
      0.3,
      1.4,
      0.2,
      0.2,
      1.0,
      1.0,
      -2.5,
      -2.3,
      -2.2,
      0.0,
      0.5,
      0.9,
      0.9,
      0.9,
      1.0
    ];

    return new Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
        ),
        drawer: navigationDrawer(),
        body: GridView.count(
          crossAxisCount: 2,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              padding: const EdgeInsets.all(18.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: <Widget>[
                      const Text('Flight Bookings: 576'),
                      Lottie.asset('assets/flightticket.json')
                    ],
                  ),
                ),
                shadowColor: Colors.black,
                color: Colors.amberAccent,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(48.0),
              child: SizedBox(
                width: 120,
                height: 80,
                child: new Sparkline(
                  data: flightData,
                  lineWidth: 3.0,
                  lineGradient: new LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.amber[800], Colors.amber[200]],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(18.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: <Widget>[
                      const Text('Hotel Bookings: 392'),
                      Lottie.asset('assets/hotelchannels.json')
                    ],
                  ),
                ),
                shadowColor: Colors.black,
                color: Colors.blueAccent,
              ),
            ),
            Container(
                padding: const EdgeInsets.all(48.0),
                child: SizedBox(
                  width: 120,
                  height: 80,
                  child: new Sparkline(
                    data: hotelData,
                    lineWidth: 3.0,
                    lineGradient: new LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue[800], Colors.blue[200]],
                    ),
                  ),
                )),
            Container(
              padding: const EdgeInsets.all(18.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: <Widget>[
                      const Text('Specials Bookings: 779'),
                    ],
                  ),
                ),
                shadowColor: Colors.black,
                color: Colors.lightGreen,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(48.0),
              child: SizedBox(
                width: 120,
                height: 80,
                child: new Sparkline(
                  data: specialsData,
                  lineWidth: 3.0,
                  lineGradient: new LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.green[800], Colors.green[200]],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
