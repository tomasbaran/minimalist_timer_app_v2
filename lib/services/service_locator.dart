import 'dart:async';

import 'package:exp0_min_state_management_timer/screens/timer_screen/timer_screen_manager.dart';
import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container.dart';
import 'package:exp0_min_state_management_timer/widgets/buttons_container/buttons_container_manager.dart';
import 'package:exp0_min_state_management_timer/widgets/timer_container/timer_container_manager.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton<ButtonsContainerManager>(() => ButtonsContainerManager());
  getIt.registerLazySingleton<TimerContainerManager>(() => TimerContainerManager());
  getIt.registerLazySingleton<TimerScreenManager>(() => TimerScreenManager());
}
