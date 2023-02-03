import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:travel_app_ui/constants.dart';
import 'package:travel_app_ui/responsive.dart';

import '../models/place.dart';
import '../utils.dart';

class RecommendedPlacesCard extends StatelessWidget {
  final Place place;
  final GestureTapCallback isEvent;

  const RecommendedPlacesCard({ required this.place, required this.isEvent});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:isEvent,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Hero(
                tag: place.id,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(place.image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 200),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 70,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 5),
                  decoration: cardInfoDecoration,
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            place.name,
                            style:  TextStyle(
                              fontSize:isTab(context)?20: 13,
                              color: kTextColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),


                        ],
                      ),
                      SmoothStarRating(
                        allowHalfRating: false,
                        onRatingChanged: (v) {},
                        starCount: 4,
                        rating: place.rating,
                        size: isTab(context)?15:10.0,
                        color: kRatingStarColor,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
