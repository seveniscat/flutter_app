import 'package:flutter/material.dart';
import 'package:flutter_app/config/route.dart';
import 'package:flutter_app/config/theme_config.dart';
import 'package:flutter_app/core/viewmodel/meal_view_model.dart';
import 'package:provider/provider.dart';

main(List<String> args) {
  runApp(ChangeNotifierProvider(
    // 懒加载
    // provider/consumer/selector
    create: (context) => MealViewModel(),
    child: const MyApp(),
  ));
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
