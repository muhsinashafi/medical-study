import 'package:flutter/material.dart';

class AnimatedNotifier with ChangeNotifier {
  bool selected = false;
  void changeAlignment() {
    selected = !selected;
    notifyListeners();
  }
}
