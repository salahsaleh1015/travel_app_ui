import 'package:flutter/material.dart';
import 'package:travel_app_ui/commponent/welcome_button.dart';
import 'package:travel_app_ui/constants.dart';

import '../screens/home/home.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("winter",
              style: TextStyle(
                fontSize: 38,
                color: kTextColor,
              )),
          const Text("vacation trips",
              style: TextStyle(
                fontSize: 38,
                color: kTextColor,
              )),
          const SizedBox(height: 25),
          const Text(
            'Enjoy your winter vacations with warmth and amazing sightseeing on the mountains. Enjoy the best experience with us!',
            style: TextStyle(fontSize: 16, color: kTextColor),
          ),
          const SizedBox(height: 20),
          WelcomeButton(
            eventTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                       HomeScreen()));
            },
          ),
        ],
      ),
    );
  }
}
