import 'package:flutter/material.dart';

import '../models/promotion_model.dart';

class PromotionsService with ChangeNotifier {
  List<PromotionModel> _promotions = [];

  List<PromotionModel> get getPromotions => _promotions;

  void fetchPromotions() async{
    //ToDo: Fetch and set Promotions from firebase
    _promotions = [
      PromotionModel(
        id: "0",
        accentColor: "0xFFD7385E",
        imageUrl:
            "https://images.unsplash.com/photo-1596489295725-a52879ab37ea?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=johny-goerend-uEn_WKl7LQY-unsplash.jpg&w=640",
        destination: "later",
      ),
      PromotionModel(
        id: "1",
        accentColor: "0xFFD7385E",
        imageUrl: "https://images.unsplash.com/photo-1551321608-547c4386105e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=carlos-bryan-6ZhsoMTkKDs-unsplash.jpg&w=640",
        destination: "later",
      ),
      PromotionModel(
        id: "4",
        accentColor: "0xFFD7385E",
        imageUrl: "https://images.unsplash.com/photo-1560448075-3244c9fbefa8?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=joao-pedro-freitas-Bi9M8FDQEcI-unsplash.jpg&w=640",
        destination: "later",
      ),
      PromotionModel(
        id: "2",
        accentColor: "0xFFD7385E",
        imageUrl: "https://images.unsplash.com/photo-1552245504-5b1e10c5c04a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=mae-mu-fUcuG9h3D8E-unsplash.jpg&w=640",
        destination: "later",
      ),
      PromotionModel(
        id: "3",
        accentColor: "0xFFD7385E",
        imageUrl: "https://images.unsplash.com/photo-1527550456778-765f74fa9b59?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=kristina-tripkovic-_5CPBJELAJQ-unsplash.jpg&w=640",
        destination: "later",
      ),
    ];
    notifyListeners();
  }
}
