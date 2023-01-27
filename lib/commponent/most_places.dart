import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:travel_app_ui/commponent/place_card.dart';

import '../constants.dart';
import '../models/place.dart';
import '../utils.dart';

class MostPlaces extends StatefulWidget {
  @override
  State<MostPlaces> createState() => _MostPlacesState();
}

class _MostPlacesState extends State<MostPlaces> {
  int currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 3,
              child: PageView.builder(
                  itemCount: demoPlaces.length,
                  controller:
                      PageController(initialPage: 0, viewportFraction: 0.8),
                  onPageChanged: (value) {
                    setState(() {
                      currentSlider  = value;
                    });
                  },
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return PlaceCard(
                      place: demoPlaces[index],
                    );
                  })),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(demoPlaces.length, (index) =>buildDoNav(index: index) ),
          ))
        ],
      ),
    );
  }

  AnimatedContainer buildDoNav({required int index}) {
    return AnimatedContainer(
      padding: EdgeInsets.all(40),
margin: EdgeInsets.only(right: 5),
      duration: Duration(
        milliseconds: 100,
      ),
      height: 4,
      decoration: BoxDecoration(
        color: currentSlider == index
            ? kPrimaryColor
            : kPrimaryColor.withAlpha(70),
        borderRadius: BorderRadius.circular(4),
      ),
      width: currentSlider == index ? 40 : 10,
    );
  }
}
