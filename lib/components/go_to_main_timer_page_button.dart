import 'package:flutter/material.dart';
import 'package:pomidoro_timer/constants/constants.dart';
import '../pages/main_timer_page.dart';

class GoToMainTimerPage extends StatelessWidget {
  const GoToMainTimerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => const MainTimerPage(),
          ),
        );
      },
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          boxShadow: Constants.kBoxShadowRed,
          borderRadius: Constants.kBorderRadius,
          gradient: LinearGradient(
            colors: Constants.kGradientRed,
          ),
        ),
        child: const Center(
          child: Text(
            Constants.kStart,
            textAlign: TextAlign.center,
            style: Constants.kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
