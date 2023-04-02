import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container.dart';
import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container_manager.dart';
import 'package:flutter/material.dart';

class ButtonsContainerNotifier extends ValueNotifier<ButtonsState> {
  ButtonsContainerNotifier() : super(ButtonsState.initial);

  changeValueToFinished() {
    print('finished');
    value = ButtonsState.finished;
  }
}
