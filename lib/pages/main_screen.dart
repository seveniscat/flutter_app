import 'package:flutter/material.dart';
import 'package:flutter_app/core/config/tabbar_config.dart';
import 'package:flutter_app/share/widgets/drawer_content.dart';

class MainScreen extends StatefulWidget {
  static const routerName = '/';

  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: tabbarPages,
        index: _currentIndex,
      ),
      drawer: Drawer(child: DrawerContent()),
      bottomNavigationBar: BottomNavigationBar(
        items: tabbarItems,
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
