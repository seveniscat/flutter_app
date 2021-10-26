import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/home_content.dart';

class HomePage extends StatelessWidget {
  static const routerName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('广场'),
      ),
      body: const HomeContent(),
    );
  }
}
