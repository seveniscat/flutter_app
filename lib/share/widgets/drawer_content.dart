import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/filter/filter.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 100,
                  color: Colors.orange,
                ),
                Positioned(
                  child: Text('action now!'),
                  left: 10,
                  bottom: 10,
                )
              ],
            ),
            GestureDetector(
              child: Container(
                height: 44,
                child: Text('data1'),
              ),
              onTap: (){
                // Navigator.of(context).pop();
                Navigator.of(context).pushNamed(FilterPage.routerName);
              },
            ),
            Container(
              height: 44,
              child: Text('data12'),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemTile extends StatelessWidget {
  const ItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
