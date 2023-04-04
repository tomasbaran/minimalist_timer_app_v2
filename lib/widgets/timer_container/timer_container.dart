import 'package:exp0_min_state_management_timer/services/service_locator.dart';
import 'package:exp0_min_state_management_timer/widgets/timer_container/timer_container_manager.dart';
import 'package:flutter/material.dart';

class TimerContainer extends StatelessWidget {
  const TimerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final widgetManager = getIt<TimerContainerManager>();
    return ValueListenableBuilder<String>(
        valueListenable: widgetManager.timerNotifier,
        builder: (context, timeLeft, child) {
          return Text(
            timeLeft,
            style: const TextStyle(fontSize: 28),
          );
        });
  }
}
