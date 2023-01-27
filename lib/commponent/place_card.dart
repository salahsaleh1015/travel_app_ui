import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../constants.dart';
import '../models/place.dart';
import '../utils.dart';

class PlaceCard extends StatelessWidget {
  final Place place;

  const PlaceCard({required this.place});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(place.image), fit: BoxFit.cover)),
      margin: const EdgeInsets.only(right: 30),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            width: double.infinity,
            height: 80,
            decoration: cardInfoDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      place.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: kTextColor,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Center(
                          child: Icon(Icons.favorite, color: Colors.red)),
                    )
                  ],
                ),
                SmoothStarRating(
                  allowHalfRating: false,
                  onRatingChanged: (v) {},
                  starCount: 4,
                  rating: place.rating,
                  size: 20.0,
                  color: kRatingStarColor,
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
