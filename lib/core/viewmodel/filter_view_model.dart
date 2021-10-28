import 'package:flutter/material.dart';

class FileterViewModel extends ChangeNotifier {
  bool _isA = false;
  bool _isB = false;
  bool _isC = false;

  get isA => this._isA;

  set isA(value) {
    this._isA = value;
    notifyListeners();
  }

  get isB => this._isB;

  set isB(value) {
    this._isB = value;
    notifyListeners();
  }

  get isC => this._isC;

  set isC(value) {
    this._isC = value;
    notifyListeners();
  }
}
