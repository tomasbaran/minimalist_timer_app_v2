import 'package:exp0_min_state_management_timer/services/service_locator.dart';
import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container_notifier.dart';
import 'package:exp0_min_state_management_timer/widgets/timer_container/timer_container_manager.dart';

class ButtonsContainerManager {
  // final buttonsContainerNotifier = ValueNotifier<ButtonsState>(ButtonsState.initial);
  final buttonsNotifier = ButtonsContainerNotifier();
  final timerManager = getIt<TimerContainerManager>();

  play() {
    buttonsNotifier.value = ButtonsState.started;
    timerManager.countDownTimer();
  }

  pause() {
    buttonsNotifier.value = ButtonsState.paused;
    timerManager.pauseTimer();
  }

  reset() {
    buttonsNotifier.value = ButtonsState.initial;
    timerManager.resetTimer();
  }

  finish() {
    buttonsNotifier.value = ButtonsState.finished;
  }
}
