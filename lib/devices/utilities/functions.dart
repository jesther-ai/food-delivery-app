delay(int delayMiliseconds, Function() function) {
  Future.delayed(Duration(milliseconds: delayMiliseconds), function);
}
