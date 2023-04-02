import 'package:exp0_min_state_management_timer/services/service_locator.dart';
import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container_manager.dart';
import 'package:flutter/material.dart';

class PauseButton extends StatelessWidget {
  const PauseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        final widgetManager = getIt<ButtonsContainerManager>();
        widgetManager.pause();
      },
      child: Icon(Icons.pause),
    );
  }
}
