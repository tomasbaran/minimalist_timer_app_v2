import 'dart:ffi';

import 'package:exp0_min_state_management_timer/widgets/button_container/button_container.dart';
import 'package:exp0_min_state_management_timer/widgets/timer_container/timer_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

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
          children: [
            TimerContainer(),
            ButtonsContainer(),
          ],
        ),
      ),
    );
  }
}
