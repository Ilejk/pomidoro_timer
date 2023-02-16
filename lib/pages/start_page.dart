import 'package:flutter/material.dart';
import 'package:pomidoro_timer/constants/constants.dart';

import '../components/go_to_main_timer_page_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.kBaseBackGroundColor,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: Constants.kBasePadding,
                child: Text(
                  Constants.kPmidoroTimerTitle,
                  textAlign: TextAlign.center,
                  style: Constants.kTitleTextStyle,
                ),
              ),
              Padding(
                padding: Constants.kBasePadding,
                child: Image.asset(
                  Constants.kTomatoPNG,
                ),
              ),
              const GoToMainTimerPage()
            ],
          ),
        ),
      ),
    );
  }
}
