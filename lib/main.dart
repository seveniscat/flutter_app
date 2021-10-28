import 'package:flutter/material.dart';
import 'package:flutter_app/core/config/route.dart';
import 'package:flutter_app/core/config/theme_config.dart';
import 'package:flutter_app/core/viewmodel/favor_view_model.dart';
import 'package:flutter_app/core/viewmodel/filter_view_model.dart';
import 'package:flutter_app/core/viewmodel/meal_view_model.dart';
import 'package:provider/provider.dart';

main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => FileterViewModel()),
      // ChangeNotifierProvider(create: (context) => MealViewModel()),
      ChangeNotifierProxyProvider<FileterViewModel, MealViewModel>(
          create: (context) => MealViewModel(),
          update: (context, filterVM, mealVM) {
            mealVM!.updateFilterVM(filterVM);
            return mealVM;
          }),

      ChangeNotifierProvider(create: (context) => MealFavorViewModel()),
    ],
    child: const MyApp(),
  ));
  // runApp(ChangeNotifierProvider(
  //   // 懒加载
  //   // provider/consumer/selector
  //   create: (context) => MealViewModel(),
  //   child: const MyApp(),
  // ));
  // runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.norTheme,
      routes: MyRouter.routers,
      initialRoute: MyRouter.initialRoute,
      onGenerateRoute: MyRouter.onGenerateRoute,
      onUnknownRoute: MyRouter.onUnknownRoute,
    );
  }
}
