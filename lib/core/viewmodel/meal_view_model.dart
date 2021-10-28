import 'package:flutter/material.dart';
import 'package:flutter_app/core/viewmodel/filter_view_model.dart';
import 'package:flutter_app/pages/meals/models/meal_model.dart';
import 'package:flutter_app/core/services/meal_request.dart';

class MealViewModel extends ChangeNotifier {
  List<MealModel> _meals = [];
  FileterViewModel? _filterVM;

  MealViewModel() {
    MealRequest.getMealData().then((models) {
      _meals = models;
    });
  }
  List<MealModel> get meals {
    return _meals.where((meal) {
      if(_filterVM == null) return true;

      if (_filterVM!.isA && !meal.isGlutenFree!) return false;
      if (_filterVM!.isB && !meal.isLactoseFree!) return false;
      if (_filterVM!.isC && !meal.isVegan!) return false;

      return true;
    }).toList();
  }

  set meals(List<MealModel> models) {
    _meals = models;
    notifyListeners();
  }

  void updateFilterVM(FileterViewModel filterVM) {
    _filterVM = filterVM;
  }
}
