import 'package:flutter/material.dart';
import 'package:econsult/home/home_view.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() { 
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return HomePage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
  return new Scaffold(
    body: new Center(
      child: new Image.asset(
        "assets/econt.png",
          height: 400.0,
          width: 200.0,
      ),
    ),
  );
  }
}