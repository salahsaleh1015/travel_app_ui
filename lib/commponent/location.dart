import 'package:flutter/material.dart';
import 'package:travel_app_ui/models/place.dart';

class Location extends StatelessWidget {
  final Place place;

  const Location({ required this.place});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Icon(
          Icons.location_on,
          color: Colors.black,
        ),
        Text(place.location),
      ],
    );
  }
}
