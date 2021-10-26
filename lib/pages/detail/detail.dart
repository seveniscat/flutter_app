import 'package:flutter/material.dart';
import 'package:flutter_app/core/models/category_model.dart';

import 'detail_content.dart';

class DetailPage extends StatelessWidget {
  static const routerName = '/detail';

  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category =
        ModalRoute.of(context)?.settings.arguments as CategoryModel;

    return Scaffold(
        appBar: AppBar(
          title: Text(category.title ?? "title"),
        ),
        body: DetailContent());
  }
}
