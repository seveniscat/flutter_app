import 'package:flutter/material.dart';
import 'package:flutter_app/core/models/category_model.dart';
import 'package:flutter_app/core/viewmodel/favor_view_model.dart';
import 'package:flutter_app/pages/meals/models/meal_model.dart';
import 'package:provider/provider.dart';

import 'detail_content.dart';

class DetailPage extends StatelessWidget {
  static const routerName = '/detail';

  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as MealModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title!),
      ),
      body: DetailContent(meal),
      floatingActionButton:
          Consumer<MealFavorViewModel>(builder: (ctx, favoVM, child) {
        bool isfav = favoVM.isFavor(meal);
        return FloatingActionButton(
          child: Icon(isfav ? Icons.favorite : Icons.favorite_border),
          onPressed: () {
            if (isfav) {
              favoVM.removeMeal(meal);
            } else {
              favoVM.addMeal(meal);
            }
          },
        );
      }),
    );
  }
}
