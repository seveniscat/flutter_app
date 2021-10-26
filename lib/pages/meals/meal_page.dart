import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/models/category_model.dart';
import 'package:flutter_app/pages/meals/meal_content.dart';

class MealPage extends StatelessWidget {
  static const routerName = '/meal';

  const MealPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CategoryModel itemModel =
        ModalRoute.of(context)?.settings.arguments as CategoryModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(itemModel.title!),
      ),
      body: MealContent(),
    );
  }
}
