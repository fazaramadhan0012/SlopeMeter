import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

class WaterpassApp extends StatefulWidget {
  const WaterpassApp({super.key});

  @override
  State<WaterpassApp> createState() => _WaterpassAppState();
}

class _WaterpassAppState extends State<WaterpassApp> {
  double _tilt = 0;

  @override
  void initState() {
    super.initState();
    accelerometerEvents.listen((event) {
      setState(() {
        _tilt = event.y;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kemiringan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 5,
                  height: 150,
                  child: VerticalDivider(
                    color: Colors.black,
                    thickness: 5.0,
                  ),
                ),
                Transform.rotate(
                  angle: -_tilt / 12,
                  child: Container(
                    width: 5,
                    height: 450,
                    child: VerticalDivider(
                      color: Colors.blue,
                      thickness: 5.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Text(
              '${_tilt.toStringAsFixed(2)}°',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
