import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import '../../navigation/navigationDrawer.dart';

class dashboardPage extends StatelessWidget {
  static const String routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    var flightData = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
    var hotelData = [1.0, 1.0, 2.5, 2.0, 3.0, 0.0, -0.5, -2.0, -0.5, 0.0, 1.0];

    return new Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
        ),
        drawer: navigationDrawer(),
        body: GridView.count(
          crossAxisCount: 2,
          scrollDirection: Axis.vertical,
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 3)),
                padding: const EdgeInsets.all(16.0),
                child: const Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Flights: 576"),
                  ),
                  shadowColor: Colors.black,
                  color: Colors.amberAccent,
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 3)),
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: new Sparkline(
                    data: flightData,
                    lineWidth: 3.0,
                    lineGradient: new LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.purple[800], Colors.purple[200]],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 3)),
                padding: const EdgeInsets.all(16.0),
                child: const Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Hotels: 392"),
                  ),
                  shadowColor: Colors.black,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            Center(
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 3)),
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: new Sparkline(
                      data: hotelData,
                      lineWidth: 3.0,
                      lineGradient: new LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.purple[800], Colors.purple[200]],
                      ),
                    ),
                  )),
            )
          ],
        ));
  }
}
