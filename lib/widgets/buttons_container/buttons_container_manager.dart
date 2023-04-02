import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container_notifier.dart';

class ButtonsContainerManager {
  // final buttonsContainerNotifier = ValueNotifier<ButtonsState>(ButtonsState.initial);
  final buttonsContainerNotifier = ButtonsContainerNotifier();
}

enum ButtonsState {
  initial,
  started,
  paused,
  finished,
}
