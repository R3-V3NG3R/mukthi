import 'package:flutter/foundation.dart';

class PromotionModel {
  @required
  final String id;
  @required
  final String imageUrl;
  @required
  final String destination;
  @required
  final String accentColor;

  PromotionModel({this.id, this.destination, this.imageUrl, this.accentColor});

  PromotionModel.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        imageUrl = data['imageUrl'],
        destination = data['destination'],
        accentColor = data["accentColor"];

  Map<String, dynamic> toJson() => {
        'id': id,
        'imageUrl': imageUrl,
        'destination': destination,
        'accentColor': accentColor,
      };
}
