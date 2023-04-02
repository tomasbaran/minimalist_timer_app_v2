import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container_notifier.dart';

class ButtonsContainerManager {
  // final buttonsContainerNotifier = ValueNotifier<ButtonsState>(ButtonsState.initial);
  final buttonsContainerNotifier = ButtonsContainerNotifier();

  play() {
    buttonsContainerNotifier.value = ButtonsState.started;
  }

  pause() {
    buttonsContainerNotifier.value = ButtonsState.paused;
  }

  reset() {
    buttonsContainerNotifier.value = ButtonsState.initial;
  }
}
