import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_salary/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.pushNamed(context, '/sign-in'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 93,
              height: 114,
              decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('images/ic_splash.png')),
              ),
            ),
            const SizedBox(height: 60),
            Text('Salary.id',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
