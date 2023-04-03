import 'package:exp0_min_state_management_timer/services/service_locator.dart';
import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container_notifier.dart';
import 'package:exp0_min_state_management_timer/widgets/timer_container/timer_container_manager.dart';

class ButtonsContainerManager {
  // final buttonsContainerNotifier = ValueNotifier<ButtonsState>(ButtonsState.initial);
  final buttonsStateNotifier = ButtonsContainerNotifier();
  final timerManager = getIt<TimerContainerManager>();

  play() {
    buttonsStateNotifier.value = ButtonsState.started;
    timerManager.countDownTimer();
  }

  pause() {
    buttonsStateNotifier.value = ButtonsState.paused;
    timerManager.pauseTimer();
  }

  reset() {
    buttonsStateNotifier.value = ButtonsState.initial;
    timerManager.resetTimer();
  }
}
