import 'package:flutter/material.dart';
import 'package:flutter_app/core/models/category_model.dart';
import 'package:flutter_app/pages/meals/meal_page.dart';

import '../detail/detail.dart';

class HomePageItem extends StatelessWidget {
  final CategoryModel itemModel;

  const HomePageItem(this.itemModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bgColor = itemModel.cColor;
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            color: bgColor,
            // borderRadius: BorderRadius.all(Radius.circular(10)),
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [bgColor, bgColor.withOpacity(0.5)],
            )),
        alignment: Alignment.center,
        child: Text(
          itemModel.title!,
          // style: const TextStyle(color: Colors.white),
          // 重写主题
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
      ),
      onTap: (){
        // 进入详情页
        Navigator.of(context).pushNamed(MealPage.routerName, arguments: itemModel);
      },
    );
  }
}
