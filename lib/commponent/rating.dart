import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../constants.dart';
import '../models/place.dart';

class Rating extends StatelessWidget {
  final Place place;

  const Rating({required this.place});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SmoothStarRating(
          allowHalfRating: true,
          color: kRatingStarColor,
          onRatingChanged: (v) {},
          starCount: 5,
          size: 20,
          rating: place.rating,
        ),
        Text(
          place.rating.toString(),
        )
      ],
    );
  }
}
