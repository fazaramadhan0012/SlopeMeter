import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

class BubbleLevel extends StatefulWidget {
  const BubbleLevel({Key? key}) : super(key: key);

  @override
  State<BubbleLevel> createState() => _BubbleLevelState();
}

class _BubbleLevelState extends State<BubbleLevel> {
  double _tiltValueX = 0.0;
  double _tiltValueY = 0.0;

  @override
  void initState() {
    super.initState();
    accelerometerEvents.listen((AccelerometerEvent event) {
      setState(() {
        _tiltValueX = event.x;
        _tiltValueY = event.y;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bubble Level'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Horizontal : ${_tiltValueX.toStringAsFixed(2)}°',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            Text(
              'Vertikal : ${_tiltValueY.toStringAsFixed(2)}°',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(200.0),
                  ),
                ),
                Transform.translate(
                  offset: Offset(_tiltValueX * 8, _tiltValueY * 8),
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(200.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
