import 'package:exp0_min_state_management_timer/services/service_locator.dart';
import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container_manager.dart';
import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container_notifier.dart';
import 'package:exp0_min_state_management_timer/widgets/pause_button.dart';
import 'package:exp0_min_state_management_timer/widgets/play_button.dart';
import 'package:exp0_min_state_management_timer/widgets/reset_button.dart';
import "package:flutter/material.dart";

class ButtonsContainer extends StatelessWidget {
  const ButtonsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final widgetManager = getIt<ButtonsContainerManager>();
    return ValueListenableBuilder(
      valueListenable: widgetManager.buttonsContainerNotifier,
      builder: ((context, buttonsState, child) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (buttonsState == ButtonsState.initial) const PlayButton(),
              if (buttonsState == ButtonsState.started) ...const [PauseButton(), SizedBox(width: 20), ResetButton()],
              if (buttonsState == ButtonsState.paused) ...const [PlayButton(), SizedBox(width: 20), ResetButton()],
              if (buttonsState == ButtonsState.finished) const ResetButton(),
            ],
          )),
    );
  }
}
