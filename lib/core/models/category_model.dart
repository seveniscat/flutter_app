import 'package:flutter/material.dart';

class CategoryModel {
  String id = '';
  String? title;
  String? color;

  Color cColor = Colors.white;

  CategoryModel({required this.id, this.title, this.color});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];

    final colorInt = int.parse(color!, radix: 16);
    cColor = Color(0xff000000 | colorInt);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['title'] = title;
    data['color'] = color;

    return data;
  }
}


class Model {
  String name = '';

  Model({required this.name});

  Model.fromDic() {
    name = '';

  }

}