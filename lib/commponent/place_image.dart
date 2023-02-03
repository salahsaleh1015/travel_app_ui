import 'package:flutter/material.dart';
import 'package:travel_app_ui/models/place.dart';

class ImagePlace extends StatelessWidget {

 final Place place;

  const ImagePlace({ required this.place});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      child: Hero(
        tag: place.id,
        child: Image.asset(
          place.image,
          width: size.width,
          height: size.height * 0.4,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
