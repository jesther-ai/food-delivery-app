import 'package:flutter/foundation.dart';
import 'package:food_app_delivery/devices/enums.dart';
import 'package:food_app_delivery/devices/utilities/functions.dart';

class WelcomeProvider with ChangeNotifier {
  ButtonState _home = ButtonState.loading;

  ButtonState get home => _home;

  init() {
    delay(1500, () {
      _home = ButtonState.initial;
      notifyListeners();
    });
  }

  setHomeButton() {
    _home = ButtonState.loading;
    notifyListeners();
    init();
  }
}
