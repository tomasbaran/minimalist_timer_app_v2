import 'package:exp0_min_state_management_timer/services/storage_service.dart';
import 'package:exp0_min_state_management_timer/services/service_locator.dart';
import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container_manager.dart';
import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container_notifier.dart';
import 'package:exp0_min_state_management_timer/widgets/timer_container/timer_container_manager.dart';

class TimerScreenManager {
  final timerManager = getIt<TimerContainerManager>();
  final buttonsManager = getIt<ButtonsContainerManager>();

  loadSavedTimer() async {
    // Load Timer
    timerManager.timerSecondsLeft = await StorageService().loadTimer();
    // Update Timer
    timerManager.updateNotifier(timerManager.timerSecondsLeft);

    // Load & Update ButtonsState
    switch (await StorageService().loadButtonsState()) {
      case 'initial':
        buttonsManager.buttonsNotifier.value = ButtonsState.initial;
        break;
      case 'started':
        buttonsManager.buttonsNotifier.value = ButtonsState.started;
        break;
      case 'paused':
        buttonsManager.buttonsNotifier.value = ButtonsState.paused;
        break;
      case 'finished':
        buttonsManager.buttonsNotifier.value = ButtonsState.finished;
        break;
      default:
    }
  }
}
