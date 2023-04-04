import 'package:exp0_min_state_management_timer/screens/timer_screen/timer_screen.dart';
import 'package:exp0_min_state_management_timer/services/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TimerScreen(),
    );
  }
}
