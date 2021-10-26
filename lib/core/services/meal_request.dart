import 'package:flutter_app/core/models/meal_model.dart';
import 'package:flutter_app/core/services/http_request.dart';

class MealRequest {

  static Future<List<MealModel>> getMealData() async {
    final result = await HttpRequest.request('/meal');
    final meals = result['meal'];
    List<MealModel> models = [];
    for (var json in meals) {
      models.add(MealModel.fromJson(json));
    }
    return models;
  } 
}