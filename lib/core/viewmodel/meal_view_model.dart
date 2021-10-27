import 'package:flutter/material.dart';
import 'package:flutter_app/pages/meals/models/meal_model.dart';
import 'package:flutter_app/core/services/meal_request.dart';

class MealViewModel extends ChangeNotifier {
  List<MealModel> _meals = [];

  MealViewModel() {
    MealRequest.getMealData().then((models) {
      _meals = models;
    });
  }
  List<MealModel> get meals {
    return _meals.toList();
  }
  set meals(List<MealModel> models) {
    _meals = models;
    notifyListeners();
  }
}
