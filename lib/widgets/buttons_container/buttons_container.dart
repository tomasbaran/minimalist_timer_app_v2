import 'package:exp0_min_state_management_timer/services/service_locator.dart';
import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container_manager.dart';
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
      builder: ((context, value, _child) => Column(
            children: [
              Text(value.name),
              ElevatedButton(
                onPressed: widgetManager.changeValueToFinished,
                child: Text('change value to finished'),
              ),
              ElevatedButton(
                onPressed: widgetManager.changeValueToStarted,
                child: Text('change value to started'),
              ),
            ],
          )),
    );
  }
}
