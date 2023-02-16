// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:lottie/lottie.dart';

import 'package:pomidoro_timer/constants/constants.dart';

class MainTimerPage extends StatefulWidget {
  const MainTimerPage({super.key});

  @override
  State<MainTimerPage> createState() => _MainTimerPageState();
}

class _MainTimerPageState extends State<MainTimerPage> {
  int time = 2;
  bool isRunning = false;
  DateTime timerTime = DateTime.now().add(const Duration(minutes: 2));

  setTime() {
    setState(() {
      if (time == 2) {
        time = 1;
        isRunning = true;
        timerTime = DateTime.now().add(const Duration(minutes: 2));
      } else if (time == 1) {
        time = 2;
        isRunning = true;
        timerTime = DateTime.now().add(const Duration(minutes: 1));
      }
    });
  }

  void startCountdown() {
    setState(() {
      isRunning = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.kBaseBackGroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              child: Lottie.asset(Constants.kTomatoAnimation),
            ),
            const SizedBox(height: 40),
            isRunning == true
                ? TimerCountdown(
                    onEnd: () {
                      setState(() {
                        isRunning = false;
                      });
                    },
                    colonsTextStyle: TextStyle(
                      fontSize: 70,
                      letterSpacing: 5,
                      fontWeight: FontWeight.bold,
                      color: time == 1
                          ? Colors.red.shade600
                          : Colors.lightGreen.shade600,
                    ),
                    enableDescriptions: false,
                    format: CountDownTimerFormat.minutesSeconds,
                    timeTextStyle: TextStyle(
                      fontSize: 120,
                      letterSpacing: 5,
                      fontWeight: FontWeight.bold,
                      color: time == 1
                          ? Colors.red.shade600
                          : Colors.lightGreen.shade600,
                    ),
                    endTime: timerTime,
                  )
                : GestureDetector(
                    onTap: setTime,
                    child: Container(
                      height: 125,
                      width: 350,
                      decoration: BoxDecoration(
                        boxShadow: Constants.kBoxShadowGreen,
                        borderRadius: Constants.kBorderRadius,
                        gradient: LinearGradient(
                          colors: Constants.kGradientGreen,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          time == 2 ? Constants.kWork : Constants.kBreak,
                          textAlign: TextAlign.center,
                          style: Constants.kWorkButtonTextStyle,
                        ),
                      ),
                    ),
                  ),
            const SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isRunning = false;
                  timerTime = DateTime.now().add(const Duration(minutes: 2));
                  time = 2;
                });
              },
              child: Container(
                height: 85,
                width: 250,
                decoration: BoxDecoration(
                  boxShadow: Constants.kBoxShadowRed,
                  borderRadius: Constants.kBorderRadius,
                  gradient: LinearGradient(
                    colors: Constants.kGradientRed,
                  ),
                ),
                child: const Center(
                  child: Text(
                    Constants.kStop,
                    textAlign: TextAlign.center,
                    style: Constants.kStopButtonTextStyle,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
