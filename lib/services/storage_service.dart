import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  saveButtonsState(String state) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('buttons_state', state);
  }

  Future<String> loadButtonsState() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String output = 'initial';
    if (prefs.getString('buttons_state') != null) {
      output = prefs.getString('buttons_state')!;
    }
    return output;
  }

  saveTimer(int secondsLeft) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('time_left', secondsLeft);
  }

  Future<int> loadTimer() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    int output = 10;
    if (prefs.getInt('time_left') != null) {
      output = prefs.getInt('time_left')!;
    }
    return output;
  }
}
