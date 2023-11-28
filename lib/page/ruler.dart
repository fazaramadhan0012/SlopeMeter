import 'package:flutter/material.dart';

class RulerPage extends StatelessWidget {
  final double cmHeight = 1.0;
  final double mmHeigth = 0.1;
  final int totalMm = 1000;
  final double spaceBetweenMm = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //untuk setiap 1 milimeter
              Column(
                children: List.generate(
                  totalMm,
                  (index) => Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: mmHeigth,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(height: spaceBetweenMm),
                    ],
                  ),
                ),
              ),
              //untuk setiap 1 centimeter
              Column(
                children: List.generate(
                  100,
                  (index) => Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 20,
                            height: mmHeigth,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
              //text untuk setiap centimeter
              Column(
                children: List.generate(
                  100,
                  (index) => Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 8),
                          Text(
                            '${index} cm',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
