import 'dart:async';
import 'dart:developer';

import 'package:exp0_min_state_management_timer/constants.dart';
import 'package:exp0_min_state_management_timer/services/service_locator.dart';
import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container_manager.dart';
import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container_notifier.dart';
import 'package:flutter/material.dart';

class TimerContainerManager {
  final timeLeftNotifier = ValueNotifier<String>(defaultTimeString);

  Timer? _timer;
  int timerSecondsLeft = defaultTime.inSeconds;

  updateNotifier(int timeLeft) {
    timeLeftNotifier.value = '00:0' + timeLeft.toString();
  }

  pauseTimer() {
    _timer?.cancel();
  }

  countDownTimer() {
    _timer = Timer.periodic(oneSec, (timer) {
      updateNotifier(--timerSecondsLeft);

      if (timerSecondsLeft == 0) {
        _timer?.cancel();
        final buttonsContainerManager = getIt<ButtonsContainerManager>();
        buttonsContainerManager.buttonsStateNotifier.value = ButtonsState.finished;
      }
    });
  }

  resetTimer() {
    _timer?.cancel();
    timerSecondsLeft = defaultTime.inSeconds;
    updateNotifier(timerSecondsLeft);
  }
}
