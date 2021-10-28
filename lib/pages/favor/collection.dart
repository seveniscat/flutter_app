import 'package:flutter/material.dart';

class CollectionPage extends StatelessWidget {
  static const routerName = '/Collection';

  const CollectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('收藏'),
      ),
      body: Container(
        color: Colors.orange,
      ),
    );
  }
}
