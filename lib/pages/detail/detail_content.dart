import 'package:flutter/material.dart';

class DetailContent extends StatelessWidget {
  const DetailContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
        );
      },
      shrinkWrap: true,
    );
  }
}
