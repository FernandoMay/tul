import 'dart:async';

import 'package:tul/constants.dart';
import 'package:tul/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 0, milliseconds: 618, microseconds: 33),
        onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Home(),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 70.0,
              horizontal: 32.0,
            ),
            child: Text(
              "Tul",
              style: TextStyle(
                color: primaryColor,
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Positioned(
            bottom: -160,
            right: -120,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(160))),
            ),
          ),
          Positioned(
            bottom: -170,
            right: 50,
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(160))),
            ),
          ),
          Center(
            child: Image.asset(
              "lib/assets/cherry.png",
              height: 220,
            ),
          ),
        ],
      ),
    );
  }
}
