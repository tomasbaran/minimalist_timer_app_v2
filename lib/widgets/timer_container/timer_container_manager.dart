import 'dart:async';
import 'dart:developer';

import 'package:exp0_min_state_management_timer/constants.dart';
import 'package:exp0_min_state_management_timer/services/service_locator.dart';
import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container_manager.dart';
import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container_notifier.dart';
import 'package:flutter/material.dart';

class TimerContainerManager {
  final timerNotifier = ValueNotifier<String>(defaultTimeString);

  Timer? _timerTicker;
  int timerSecondsLeft = defaultTime.inSeconds;

  updateNotifier(int timeLeft) {
    timerNotifier.value = '00:0' + timeLeft.toString();
  }

  pauseTimer() {
    _timerTicker?.cancel();
  }

  countDownTimer() {
    _timerTicker = Timer.periodic(oneSec, (timer) {
      updateNotifier(--timerSecondsLeft);

      if (timerSecondsLeft == 0) {
        _timerTicker?.cancel();
        final buttonsContainerManager = getIt<ButtonsContainerManager>();
        buttonsContainerManager.finish();
      }
    });
  }

  resetTimer() {
    _timerTicker?.cancel();
    timerSecondsLeft = defaultTime.inSeconds;
    updateNotifier(timerSecondsLeft);
  }
}
