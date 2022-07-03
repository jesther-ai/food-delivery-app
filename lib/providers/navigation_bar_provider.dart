import 'package:flutter/foundation.dart';

class NavigationBarProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  setCurrentIndex(index) {
    _currentIndex = index;
    notifyListeners();
  }
}
