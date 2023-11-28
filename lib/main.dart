import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tes_kemiringan/page/home_page.dart';
import 'package:tes_kemiringan/page/ruler.dart';
import 'package:tes_kemiringan/page/waterpass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SLOPE METER\n(Pengukur Kemiringan)',
              style: TextStyle(
                color: Color(0xFF42A5F5),
                fontSize: 24,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/logo.png',
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
