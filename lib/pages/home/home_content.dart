import 'package:flutter/material.dart';
import 'package:flutter_app/core/models/category_model.dart';
import 'package:flutter_app/core/services/json_parse.dart';
import 'package:flutter_app/pages/home/home_item.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CategoryModel>>(
        future: MyJsonParse.parseJSON(),
        // initialData: [],
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.error != null) {
            return const Center(
              child: Text('请求失败'),
            );
          }

          final models = snapshot.data;

          return GridView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: models!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 15,
                  childAspectRatio: 1.5),
              itemBuilder: (context, index) {
                return HomePageItem(models[index]);
              });
        });
  }
}
