import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:travel_app_ui/commponent/location.dart';
import 'package:travel_app_ui/commponent/rating.dart';
import 'package:travel_app_ui/responsive.dart';

import '../../commponent/common_button.dart';
import '../../commponent/date_choser.dart';
import '../../commponent/place_image.dart';
import '../../constants.dart';
import '../../models/place.dart';

class DetailsScreen extends StatelessWidget {
  final Place place;

  const DetailsScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: buildAppBar(
          title: '',
          actions: [],
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ))),
      body: Stack(
        children: [
          ImagePlace(
            place: place,
          ),
          DelayedDisplay(
            delay: const Duration(milliseconds: 300),
            fadingDuration:const Duration(milliseconds: 100) ,
            slidingBeginOffset: const Offset(0, 1),
            child: Container(
              height: size.height * 0.7,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              margin: EdgeInsets.only(top: size.height * 0.35),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      place.name,
                      style:  TextStyle(fontWeight: FontWeight.bold, fontSize:isTab(context)?29: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Location(place: place),
                    const SizedBox(
                      height: 20,
                    ),
                    Rating(
                      place: place,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    DateChooser(),
                    const SizedBox(
                      height: 30,
                    ),
                     Text("Description",style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize:isTab(context)?29: 20,
                    ),),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(place.description,style:  TextStyle(
                      fontSize: isTab(context)?20:15
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children:  [
                         Text("\$ 400",style: TextStyle(
                          fontSize: isTab(context)?35:25,
                          fontWeight: FontWeight.w700,

                          color: kPrimaryColor,),),
                         Text("/package",style: TextStyle(
                          fontSize:isTab(context)?23: 15,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w800,
                        ),),
                        const Spacer(),
                        CommonButton(
                          tapEvent: (){},
                          title: "book now",
                        ),

                      ],
                    )






                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar(
      {required String title,
      required List<Widget> actions,
      required Widget leading}) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          color: kTextColor,
          fontSize: 26,
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: leading,
      actions: actions,
    );
  }
}
