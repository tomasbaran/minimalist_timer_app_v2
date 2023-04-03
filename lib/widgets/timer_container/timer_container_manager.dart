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
  int timeLeft = defaultTime.inSeconds;

  updateTimeLeftValue(int timeLeft) {
    timeLeftNotifier.value = '00:0' + timeLeft.toString();
  }

  pauseCountDown() {
    _timer?.cancel();
  }

  countDown() {
    _timer = Timer.periodic(oneSec, (timer) {
      updateTimeLeftValue(--timeLeft);

      if (timeLeft == 0) {
        log('finished');
        _timer?.cancel();
        final buttonsManager = getIt<ButtonsContainerManager>();
        buttonsManager.buttonsStateNotifier.value = ButtonsState.finished;
      }
    });
  }
}
