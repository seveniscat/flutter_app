import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/meals/models/meal_model.dart';

class DetailContent extends StatelessWidget {
  final MealModel meal;
  const DetailContent(this.meal, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[50],
      child: SingleChildScrollView(
        // physics: ScrollPhysics(parent: ),
        child: Column(
          children: <Widget>[
            // image
            Container(
              child: Image.network(meal.imageUrl!),
            ),
    
            buildMakeTitle('制作材料'),
    
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              color: Colors.white,
              // height: 200,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: meal.ingredients!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.orange,
                      height: 144,
                      child: Text(meal.ingredients![index]),
                    );
                  }),
            )
          ],
        ),
      ),
    );
    ;
  }

  Widget buildMakeTitle(String text) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
