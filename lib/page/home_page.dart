import 'package:flutter/material.dart';
import 'package:tes_kemiringan/page/bubble_level.dart';
import 'package:tes_kemiringan/page/ruler.dart';
import 'package:tes_kemiringan/page/setting_page.dart';
import 'package:tes_kemiringan/page/waterpass.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "SLOPE METER",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff000000),
                height: 28 / 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RulerPage()),
                );
              },
              child: Container(
                width: 250,
                height: 50,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Color(0xFF42A5F5)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Center(
                  child: Text(
                    'PENGGARIS',
                    style: TextStyle(
                      color: Color(0xFF42A5F5),
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WaterpassApp()),
                );
              },
              child: Container(
                width: 250,
                height: 50,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Color(0xFF42A5F5)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Center(
                  child: Text(
                    'KEMIRINGAN',
                    style: TextStyle(
                      color: Color(0xFF42A5F5),
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BubbleLevel()),
                );
              },
              child: Container(
                width: 250,
                height: 50,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Color(0xFF42A5F5)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Center(
                  child: Text(
                    'BUBBLE LEVEL',
                    style: TextStyle(
                      color: Color(0xFF42A5F5),
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pengaturan()),
                );
              },
              child: Container(
                width: 250,
                height: 50,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Color(0xFF42A5F5)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Center(
                  child: Text(
                    'TENTANG',
                    style: TextStyle(
                      color: Color(0xFF42A5F5),
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
