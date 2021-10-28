import 'package:flutter/material.dart';
import 'package:flutter_app/core/viewmodel/favor_view_model.dart';
import 'package:flutter_app/pages/detail/detail.dart';
import 'package:flutter_app/pages/meals/models/meal_model.dart';
import 'package:provider/provider.dart';

class MealListTile extends StatelessWidget {
  final MealModel meal;
  const MealListTile(this.meal, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailPage.routerName, arguments: meal);
      },
      child: Card(
        margin: const EdgeInsets.all(10),
        color: Colors.white,
        elevation: 5,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(
          children: [
            Stack(
              // height: 100,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.network(
                    meal.imageUrl!,
                    width: double.infinity,
                    height: 250,
                    // color: Colors.grey,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 15,
                  child: Container(
                    width: 300,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      meal.title!,
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  OperationItemWidget(Icon(Icons.timer), '${meal.duration} 分钟'),
                  OperationItemWidget(
                      Icon(Icons.pedal_bike), '${meal.complexDes}'),
                  buildOperationItem(meal),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildOperationItem(MealModel meal) {
    return Consumer<MealFavorViewModel>(builder: (context, favorVM, child) {
      bool isfavor = favorVM.isFavor(meal);
      return GestureDetector(
        child: OperationItemWidget(
            Icon(isfavor ? Icons.favorite : Icons.favorite_border),
            isfavor ? '已收藏' : '收藏'),
        onTap: () {
          if (isfavor) {
            favorVM.removeMeal(meal);
          } else {
            favorVM.addMeal(meal);
          }
        },
      );
    });
  }
}

class OperationItemWidget extends StatelessWidget {
  final Widget _icon;
  final String _title;

  const OperationItemWidget(
    this._icon,
    this._title, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _icon,
        Text('${_title}'),
      ],
    );
  }
}
