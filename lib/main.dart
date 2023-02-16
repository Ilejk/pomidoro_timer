import 'package:flutter/material.dart';
import 'package:pomidoro_timer/pages/start_page.dart';

void main() {
  runApp(const PomidoroTimer());
}

class PomidoroTimer extends StatelessWidget {
  const PomidoroTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}
