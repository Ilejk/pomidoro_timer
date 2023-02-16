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
    color: Colors.white,
  );
  static const kBasePadding = EdgeInsets.all(10);
  static final kBaseBackGroundColor = Colors.green.shade800;
  static final kBorderRadius = BorderRadius.circular(12);
  static final kGradient = [
    Colors.red.shade400,
    Colors.red.shade500,
    Colors.red.shade600,
    Colors.red.shade700,
    Colors.red.shade800,
    Colors.redAccent.shade700,
    Colors.red.shade900,
  ];
  static final kBoxShadow = [
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
  static const kStart = 'S T A R T';
  static const kTomatoAnimation = 'lib/assets/animations/tomato.json';
  static const kTest = 'lib/assets/animations/test.json';
}
