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
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Break time"),
              content: const Text("Take a break for 1 minute?"),
              actions: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      time = 1;
                      isRunning = true;
                      timerTime =
                          DateTime.now().add(const Duration(minutes: 1));
                      Navigator.of(context).pop();
                    });
                  },
                  child: const Text('Yes'),
                ),
              ],
            );
          },
        );
      } else if (time == 1) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Work time"),
              content: const Text("Start working for 2 minutes?"),
              actions: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      time = 2;
                      isRunning = true;
                      timerTime =
                          DateTime.now().add(const Duration(minutes: 2));
                      Navigator.of(context).pop();
                    });
                  },
                  child: const Text('Yes'),
                ),
              ],
            );
          },
        );
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
            Column(
              children: [
                ElevatedButton(
                  onPressed: setTime,
                  child: const Text("Start Countdown"),
                ),
                const SizedBox(height: 20),
                isRunning == true
                    ? TimerCountdown(
                        onEnd: () {
                          setState(() {
                            isRunning = false;
                          });
                        },
                        colonsTextStyle: const TextStyle(
                          fontSize: 50,
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold,
                          color: Colors.white54,
                        ),
                        enableDescriptions: false,
                        format: CountDownTimerFormat.minutesSeconds,
                        timeTextStyle: const TextStyle(
                          fontSize: 100,
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold,
                          color: Colors.white54,
                        ),
                        endTime: timerTime,
                      )
                    : Container(
                        height: 100,
                        width: 100,
                        color: Colors.black,
                      )
              ],
            )
          ],
        ),
      ),
    );
  }
}
