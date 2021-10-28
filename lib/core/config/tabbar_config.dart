import 'package:flutter/material.dart';
import 'package:flutter_app/pages/favor/collection.dart';
import 'package:flutter_app/pages/home/home.dart';

const List<Widget> tabbarPages = [
  HomePage(),
  CollectionPage(),
];
const List<BottomNavigationBarItem> tabbarItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.pets_outlined),
    activeIcon: Icon(Icons.pets),
    label: '首页',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.favorite_outline),
    activeIcon: Icon(Icons.favorite),
    label: '收藏',
  ),
];