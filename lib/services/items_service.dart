import 'package:flutter/foundation.dart';
import '../models/item_model.dart';

class ItemsService with ChangeNotifier {
  List<ItemModel> _recommendedItems = [];

  List<ItemModel> get recommendations => this._recommendedItems;

  Future<void> fetchAndSetRecommendations() async {
    this._recommendedItems = [
      ItemModel(
        title: "Hello",
        id: "0",
        description: "description",
        image:
            "https://images.unsplash.com/photo-1596489295725-a52879ab37ea?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=johny-goerend-uEn_WKl7LQY-unsplash.jpg&w=640",
        categories: ["a", "b", "c", "D"],
        postedOn: DateTime.now(),
        likes: 4,
      ),
      ItemModel(
        title: "Hello",
        id: "1",
        description: "description",
        image:
            "https://images.unsplash.com/photo-1596489295725-a52879ab37ea?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=johny-goerend-uEn_WKl7LQY-unsplash.jpg&w=640",
        categories: ["a", "b", "c", "D"],
        postedOn: DateTime.now(),
        isLiked: true,
        likes: 5,
      ),
      ItemModel(
        title: "Hello",
        id: "2",
        description: "description",
        image:
            "https://images.unsplash.com/photo-1596489295725-a52879ab37ea?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=johny-goerend-uEn_WKl7LQY-unsplash.jpg&w=640",
        categories: ["a", "b", "c", "D"],
        postedOn: DateTime.now(),
      ),
      ItemModel(
        title: "Hello",
        id: "3",
        description: "description",
        image:
            "https://images.unsplash.com/photo-1596489295725-a52879ab37ea?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=johny-goerend-uEn_WKl7LQY-unsplash.jpg&w=640",
        categories: ["a", "b", "c", "D"],
        postedOn: DateTime.now(),
        likes: 1,
        isLiked: true,
      ),
      ItemModel(
        title: "Hello",
        id: "4",
        description: "description",
        image:
            "https://images.unsplash.com/photo-1596489295725-a52879ab37ea?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=johny-goerend-uEn_WKl7LQY-unsplash.jpg&w=640",
        categories: ["a", "b", "c", "D"],
        postedOn: DateTime.now(),
        likes: 10,
      ),
      ItemModel(
        title: "Hello",
        id: "5",
        description: "description",
        image:
            "https://images.unsplash.com/photo-1596489295725-a52879ab37ea?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&dl=johny-goerend-uEn_WKl7LQY-unsplash.jpg&w=640",
        categories: ["a", "b", "c", "D"],
        postedOn: DateTime.now(),
        isLiked: true,
        likes: 20,
      ),
    ];
  }
}
