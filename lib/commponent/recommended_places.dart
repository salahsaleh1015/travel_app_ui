import 'package:flutter/material.dart';
import 'package:travel_app_ui/commponent/recommended_places_card.dart';
import 'package:travel_app_ui/responsive.dart';
import 'package:travel_app_ui/screens/details/details_screen.dart';
import '../models/place.dart';

class RecommendedPlaces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: 1.2,
        shrinkWrap: true,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        padding: EdgeInsets.all(20),
        crossAxisCount: isLandscape(context) ? 3 : 2,
        children: List.generate(
            demoPlaces.length,
            (index) => RecommendedPlacesCard(
                  isEvent: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                DetailsScreen(place: demoPlaces[index])));
                  },
                  place: demoPlaces[index],
                )),
      ),
    );
  }
}
