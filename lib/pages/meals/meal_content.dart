import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/models/category_model.dart';
import 'package:flutter_app/pages/meals/models/meal_model.dart';
import 'package:flutter_app/core/viewmodel/meal_view_model.dart';
import 'package:flutter_app/share/widgets/meal_list_tile.dart';
import 'package:provider/provider.dart';

class MealContent extends StatelessWidget {
  const MealContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CategoryModel itemModel =
        ModalRoute.of(context)?.settings.arguments as CategoryModel;

    return Selector<MealViewModel, List<MealModel>>(
      selector: (ctx, viewmodel) {
        final totoalMeals = viewmodel.meals;
        return totoalMeals
            .where((element) => (element.categories!.contains(itemModel.id)))
            .toList();
      },
      builder: (ctx, meals, child) {
        return ListView.builder(
            itemCount: meals.length,
            itemBuilder: (ctx, index) {
              return MealListTile(meals[index]);
            });
      },
      shouldRebuild: (pre, nex) => !listEquals(pre, nex),
    );

    // return Consumer<MealViewModel>(builder: (ctx, vm, child) {
    //   final List<MealModel> meals = [];
    //   for (var meal in vm.meals) {
    //     if (meal.categories!.contains(itemModel.id)) {
    //       meals.add(meal);
    //     }
    //   }
    // return ListView.builder(
    //   itemCount: meals.length,
    //   itemBuilder: (ctx, index) {
    //   final mealTitle = meals[index].title;
    //   print(mealTitle);
    //   return Container(
    //       child: Text(mealTitle!),
    //       margin: EdgeInsets.all(15),
    //       alignment: Alignment.center,
    //       );
    // });
    // });

    // return Selector<MealViewModel, List<MealModel>>(
    //   selector: (ctx, mealVM) {
    //     return [];
    //     // return mealVM.meals.where((meal) {
    //     //   print(meal.categories);
    //     //   return meal.categories!.contains(itemModel.id);
    //     // }).toList();

    // List<MealModel> meals = [];
    // for (var meal in vm.meals) {
    //   if (meal.categories!.contains(itemModel.id)) {
    //     meals.add(meal);
    //   }
    // }
    //     // print(meals);
    //     // return meals;
    //   },
    //   builder: (ctx, meals, child) {
    // return ListView.builder(itemBuilder: (ctx, index) {
    //   // final mealTitle = meals[index].title;
    //   return Container(
    //       // child: Text(mealTitle!),
    //       // margin: EdgeInsets.all(15),
    //       // alignment: Alignment.center,
    //       );
    // });
    //   },
    //   shouldRebuild: (pre, nex) {
    //     return true;
    //   },
    // );

    // return Container(
    //   child: Text(itemModel.title!),
    // );
  }
}
