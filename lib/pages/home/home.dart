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
        leading: IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        }, icon: Icon(Icons.settings)),
        // leading: Builder(builder: (context){
        //   return IconButton(onPressed: (){
        //     Scaffold.of(context).openDrawer();
        //   }, icon: Icon(Icons.build));
        // },),
      ),
      body: const HomeContent(),
    );
  }
}
