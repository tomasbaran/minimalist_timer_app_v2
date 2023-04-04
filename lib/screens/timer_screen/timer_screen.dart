import 'dart:ffi';

import 'package:exp0_min_state_management_timer/screens/timer_screen/timer_screen_manager.dart';
import 'package:exp0_min_state_management_timer/services/service_locator.dart';
import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container.dart';
import 'package:exp0_min_state_management_timer/widgets/timer_container/timer_container.dart';
import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({
    super.key,
  });

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  final screenManager = getIt<TimerScreenManager>();

  @override
  void initState() {
    super.initState();
    screenManager.loadSavedTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            TimerContainer(),
            SizedBox(height: 16),
            ButtonsContainer(),
          ],
        ),
      ),
    );
  }
}
