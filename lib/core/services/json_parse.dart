import 'dart:convert';


import 'package:flutter/services.dart';
import 'package:flutter_app/core/models/category_model.dart';

class MyJsonParse {
  // 
  static Future<List<CategoryModel>> parseJSON() async {
    final jsonString = await rootBundle.loadString('assets/category.json');

    final result = json.decode(jsonString);
    final resultList = result['category'];
    List<CategoryModel>results = [];
    for (var dic in resultList) {
      results.add(CategoryModel.fromJson(dic));
    }
    return results;

  }



}