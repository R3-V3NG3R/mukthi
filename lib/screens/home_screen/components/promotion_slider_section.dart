
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

import '../../../constants/colors.dart';
import '../../../models/promotion_model.dart';
import '../../../services/promotions_service.dart';

class PromotionSliderSection extends StatelessWidget {
  const PromotionSliderSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<PromotionsService>(context, listen: false)
          .fetchPromotions(),
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: AspectRatio(
              aspectRatio: 364 / 176,
              child: Shimmer.fromColors(
                child: Container(),
                baseColor: Colors.grey[300],
                highlightColor: Colors.grey[100],
              ),
            ),
          );

        final List<PromotionModel> _promotions =
            Provider.of<PromotionsService>(context,listen: false).getPromotions;
        if (_promotions.isEmpty) return Container();
        return ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: CarouselSlider.builder(
            itemCount: _promotions.length,
            itemBuilder: (_, index, __) {
              final _promotion = _promotions[index];
              return ClipRRect(
                key: Key(_promotion.id),
                borderRadius: BorderRadius.circular(16.0),
                child: AspectRatio(
                  aspectRatio: 364 / 176,
                  child: Stack(
                    children: [
                      Container(
                        color: kSecondaryColor,
                        child: FancyShimmerImage(
                          width: double.infinity,
                          imageUrl: _promotion.imageUrl,
                          boxFit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        child: Container(
                          height: 74.0,
                          width: 74.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(74.0),
                            ),
                            color: Color(
                              int.parse(_promotion.accentColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 1.0,
              initialPage: 2,
              enableInfiniteScroll: true,
            ),
          ),
        );
      },
    );
  }
}
