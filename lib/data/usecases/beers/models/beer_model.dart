import 'package:flutter_application_1/domain/entities/beer_entity.dart';

class BeerModel {
  BeerModel({
    required this.title,
    required this.description,
    required this.image,
    required this.rating,
  });

  String title;
  String description;
  String image;
  String rating;

  factory BeerModel.fromJson(Map json) => BeerModel(
        image: json['url'],
        title: json['id'],
        description: json['desc'],
        rating: json['vote_average'].toString(),
      );

  BeerEntity toEntity() => BeerEntity(
        name: title,
        description: description,
        image: image,
        rating: rating,
      );
}
