import 'package:flutter/material.dart';
import 'package:travel_app_ui/commponent/welcome_button.dart';
import 'package:travel_app_ui/constants.dart';
import 'package:travel_app_ui/responsive.dart';
import '../screens/home/home.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isLandscape(context)
          ? const EdgeInsets.symmetric(vertical: 40, horizontal: 70)
          : const EdgeInsets.all(35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("winter ",
              style: TextStyle(
                fontSize: isTab(context) ? 72 : 30,
                color: kTextColor,
              )),
          Text(" vacation trips ",
              style: TextStyle(
                fontSize: isTab(context) ? 72 : 30,
                color: kTextColor,
              )),
          const SizedBox(height: 25),
          Text(
            'Enjoy your winter vacations with warmth and amazing sightseeing on the mountains. Enjoy the best experience with us!',
            style: TextStyle(
                fontSize: isTab(context) ? 16 : 25, color: kTextColor),
          ),
          const SizedBox(height: 20),
          WelcomeButton(
            eventTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const HomeScreen()));
            },
          ),
        ],
      ),
    );
  }
}
