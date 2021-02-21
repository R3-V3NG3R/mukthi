
import 'package:auto_size_text/auto_size_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants/colors.dart';
import '../../../services/items_service.dart';

class RecommendationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _items = Provider.of<ItemsService>(context).recommendations;

    return Container(
      height: 132.0,
      child: ListView.builder(
        itemBuilder: (_, i) {
          final _item = _items[i];
          return Padding(
            padding: EdgeInsets.only(
              right: 16.0,
            ),
            child: Container(
              width: 80.0,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: FancyShimmerImage(
                      imageUrl: _item.image,
                      height: 80.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  AutoSizeText(
                    _item.title.trim(),
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 8.0,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: _items.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
