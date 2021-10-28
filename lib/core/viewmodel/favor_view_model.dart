import 'package:flutter/material.dart';
import 'package:flutter_app/pages/meals/models/meal_model.dart';

class MealFavorViewModel extends ChangeNotifier {
  List<MealModel> _favors = [];

  List<MealModel> get favors => _favors;

  set favors(List<MealModel> favors) {
    _favors = favors; 
  }

  void addMeal(MealModel meal) {
    _favors.add(meal);
    notifyListeners();
  }

  void removeMeal(MealModel meal) {
    _favors.remove(meal);
    notifyListeners();
  }

  bool isFavor(MealModel meal) {
    return _favors.contains(meal);
  }
}
