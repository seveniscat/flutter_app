import 'package:flutter/material.dart';
import 'package:flutter_app/core/models/category_model.dart';
import 'package:flutter_app/pages/meals/models/meal_model.dart';

import 'detail_content.dart';

class DetailPage extends StatelessWidget {
  static const routerName = '/detail';

  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as MealModel;

    return Scaffold(
        appBar: AppBar(
          // title: Text(category.title ?? "title"),
          title: Text(meal.title!),
        ),
        body: DetailContent(meal));
  }
}
