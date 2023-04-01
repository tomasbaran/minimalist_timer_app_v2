import 'package:flutter/material.dart';

class ButtonsContainerManager {
  final buttonsContainerNotifier = ValueNotifier<ButtonsState>(ButtonsState.initial);

  changeValueToFinished() {
    print('finished');
    buttonsContainerNotifier.value = ButtonsState.finished;
  }

  changeValueToStarted() {
    print('started');
    buttonsContainerNotifier.value = ButtonsState.started;
  }
}

enum ButtonsState {
  initial,
  started,
  paused,
  finished,
}
