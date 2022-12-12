import 'dart:async';

import 'package:flutter/material.dart';

class CounterNotifier extends ChangeNotifier {
  int secondsRemaining = 60;

  Timer? timer;
  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (secondsRemaining > 0) {
        secondsRemaining--;
        notifyListeners();
      }
    });
  }
}
