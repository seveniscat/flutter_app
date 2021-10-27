// To parse this JSON data, do
//
//     final mealModel = mealModelFromJson(jsonString);

import 'dart:convert';

MealModel mealModelFromJson(String str) => MealModel.fromJson(json.decode(str));

String mealModelToJson(MealModel data) => json.encode(data.toJson());



class MealModel {
  static const complexs = ['简单', '中等', '困难'];

  MealModel({
    this.id,
    this.categories,
    this.title,
    this.affordability,
    this.complexity,
    this.imageUrl,
    this.duration,
    this.ingredients,
    this.steps,
    this.isGlutenFree,
    this.isVegan,
    this.isVegetarian,
    this.isLactoseFree,
  });

  String? id;
  List<String>? categories;
  String? title;
  int? affordability;
  int? complexity;
  String? imageUrl;
  int? duration;
  List<String>? ingredients;
  List<String>? steps;
  bool? isGlutenFree;
  bool? isVegan;
  bool? isVegetarian;
  bool? isLactoseFree;

  String? complexDes;

  factory MealModel.fromJson(Map<String, dynamic> json) {
    MealModel model = MealModel(
        id: json["id"],
        categories: List<String>.from(json["categories"].map((x) => x)),
        title: json["title"],
        affordability: json["affordability"],
        complexity: json["complexity"],
        imageUrl: json["imageUrl"],
        duration: json["duration"],
        ingredients: List<String>.from(json["ingredients"].map((x) => x)),
        steps: List<String>.from(json["steps"].map((x) => x)),
        isGlutenFree: json["isGlutenFree"],
        isVegan: json["isVegan"],
        isVegetarian: json["isVegetarian"],
        isLactoseFree: json["isLactoseFree"],
      );

      model.complexDes = MealModel.complexs[model.complexity!];
      return model;
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "categories": List<dynamic>.from(categories!.map((x) => x)),
        "title": title,
        "affordability": affordability,
        "complexity": complexity,
        "imageUrl": imageUrl,
        "duration": duration,
        "ingredients": List<dynamic>.from(ingredients!.map((x) => x)),
        "steps": List<dynamic>.from(steps!.map((x) => x)),
        "isGlutenFree": isGlutenFree,
        "isVegan": isVegan,
        "isVegetarian": isVegetarian,
        "isLactoseFree": isLactoseFree,
      };
}


// class MealModel {
//   String? id;
//   List<String>? categories;
//   String? title;
//   int? affordability;
//   int? complexity;
//   String? imageUrl;
//   int? duration;
//   List<String>? ingredients;
//   List<String>? steps;
//   bool? isGlutenFree;
//   bool? isVegan;
//   bool? isVegetarian;
//   bool? isLactoseFree;

//   MealModel(
//       {this.id,
//       this.categories,
//       this.title,
//       this.affordability,
//       this.complexity,
//       this.imageUrl,
//       this.duration,
//       this.ingredients,
//       this.steps,
//       this.isGlutenFree,
//       this.isVegan,
//       this.isVegetarian,
//       this.isLactoseFree});

//   MealModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     categories = json['categories'].cast<String>();
//     title = json['title'];
//     affordability = json['affordability'];
//     complexity = json['complexity'];
//     imageUrl = json['imageUrl'];
//     duration = json['duration'];
//     ingredients = json['ingredients'].cast<String>();
//     steps = json['steps'].cast<String>();
//     isGlutenFree = json['isGlutenFree'];
//     isVegan = json['isVegan'];
//     isVegetarian = json['isVegetarian'];
//     isLactoseFree = json['isLactoseFree'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['categories'] = categories;
//     data['title'] = title;
//     data['affordability'] = affordability;
//     data['complexity'] = complexity;
//     data['imageUrl'] = imageUrl;
//     data['duration'] = duration;
//     data['ingredients'] = ingredients;
//     data['steps'] = steps;
//     data['isGlutenFree'] = isGlutenFree;
//     data['isVegan'] = isVegan;
//     data['isVegetarian'] = isVegetarian;
//     data['isLactoseFree'] = isLactoseFree;
//     return data;
//   }
// }
