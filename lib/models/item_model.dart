import 'package:flutter/foundation.dart';

class ItemModel {
  final String title;
  final String id;
  final String description;
  final String image;
  final DateTime postedOn;
  @required
  bool isLiked;
  @required
  int likes;
  final List<String> categories;

  ItemModel({
    @required this.title,
    @required this.id,
    @required this.description,
    @required this.image,
    @required this.categories,
    @required this.postedOn,
    this.likes = 0,
    this.isLiked = false,
  });

  ItemModel.fromJson(String id, Map<String, dynamic> data)
      : this.id = id,
        this.title = data["title"],
        this.description = data["description"],
        this.image = data["image"],
        this.categories = data["categories"],
        this.postedOn = data["postedOn"],
        this.isLiked = data["isLiked"] == null ? false : data["isLiked"],
        this.likes = data["likes"] == null ? 0 : data["likes"];

  Future<bool> toggleLike() async {
    this.isLiked = !this.isLiked;
    if (isLiked)
      likes++;
    else
      likes--;
    return isLiked;
  }
}
