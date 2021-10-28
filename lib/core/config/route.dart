import 'package:flutter/material.dart';
import 'package:flutter_app/pages/favor/collection.dart';
import 'package:flutter_app/pages/detail/detail.dart';
import 'package:flutter_app/pages/filter/filter.dart';
import 'package:flutter_app/pages/home/home.dart';
import 'package:flutter_app/pages/main_screen.dart';
import 'package:flutter_app/pages/meals/meal_page.dart';

class MyRouter {
  static final Map<String, WidgetBuilder> routers = {
    MainScreen.routerName: (ctx) => MainScreen(),
    HomePage.routerName: (ctx) => HomePage(),
    DetailPage.routerName: (ctx) => DetailPage(),
    CollectionPage.routerName: (ctx) => CollectionPage(),
    MealPage.routerName: (ctx) => MealPage(),
  };
  static const String initialRoute = MainScreen.routerName;

  static RouteFactory onGenerateRoute = (settings) {
    if (settings.name == FilterPage.routerName) {
      return MaterialPageRoute(
          builder: (ctx) {
            return FilterPage();
          },
          fullscreenDialog: true);
    }
    return null;
  };

  static RouteFactory onUnknownRoute = (settings) {};
}
