import 'package:flutter/material.dart';

class CalculatorModel extends ChangeNotifier {
  String _display = '';
  String getDisplay() => _display;
  void updateDisplay(String value) {
    _display = value;
    notifyListeners();
  }
}
