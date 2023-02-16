import 'package:flutter/material.dart';

class Constants {
  static const kTomatoPNG = 'lib/assets/images/pngwing.com.png';
  static const kPmidoroTimerTitle = 'P O M I D O R O\nT I M E R';
  static const kTitleTextStyle = TextStyle(
    fontSize: 35,
    height: 2,
    letterSpacing: 2,
    fontWeight: FontWeight.bold,
    color: Colors.white54,
  );
  static const kButtonTextStyle = TextStyle(
    fontSize: 20,
    letterSpacing: 3,
    fontWeight: FontWeight.bold,
    color: Colors.white70,
  );
  static const kBasePadding = EdgeInsets.all(10);
  static final kBaseBackGroundColor = Colors.green.shade800;
  static final kBorderRadius = BorderRadius.circular(12);
  static final kGradientRed = [
    Colors.red.shade400,
    Colors.red.shade500,
    Colors.red.shade600,
    Colors.red.shade700,
    Colors.red.shade800,
    Colors.redAccent.shade700,
    Colors.red.shade900,
  ];
  static final kGradientGreen = [
    Colors.green.shade400,
    Colors.green.shade500,
    Colors.green.shade600,
    Colors.green.shade700,
    Colors.green.shade800,
    Colors.green.shade900,
  ];

  static final kBoxShadowRed = [
    BoxShadow(
      spreadRadius: 2,
      blurRadius: 10,
      color: Colors.green.shade900,
      offset: const Offset(-5, -5),
    ),
    BoxShadow(
      blurRadius: 10,
      spreadRadius: 2,
      color: Colors.red.shade900,
      offset: const Offset(5, 5),
    ),
  ];
  static final kBoxShadowGreen = [
    BoxShadow(
      spreadRadius: 2,
      blurRadius: 10,
      color: Colors.green.shade600,
      offset: const Offset(-5, -5),
    ),
    BoxShadow(
      blurRadius: 10,
      spreadRadius: 2,
      color: Colors.green.shade900,
      offset: const Offset(5, 5),
    ),
  ];
  static const kWorkButtonTextStyle = TextStyle(
    fontSize: 60,
    color: Colors.white70,
    fontWeight: FontWeight.bold,
    letterSpacing: 2.5,
  );
  static const kStopButtonTextStyle = TextStyle(
    fontSize: 40,
    color: Colors.white70,
    fontWeight: FontWeight.bold,
    letterSpacing: 2.5,
  );
  static const kStart = 'S T A R T';
  static const kTomatoAnimation = 'lib/assets/animations/tomato.json';
  static const kTest = 'lib/assets/animations/test.json';
  static const kStop = 'S T O P';
  static const kWork = 'W O R K';
  static const kBreak = 'B R E A K';
}
