import 'package:flutter/material.dart';

import '../constants.dart';

class WelcomeButton extends StatelessWidget {
  final GestureTapCallback eventTap;
  const WelcomeButton({Key? key , required this.eventTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:eventTap,
      child: Container(
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(50)
        ),
        width: 200,
        height: 50,

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Row(
            children: [
              const Text("Lets go", style: TextStyle(
                  color: Colors.white
              )),
              const Spacer(),
              Image.asset(

                  "assets/images/arrow.png",fit: BoxFit.cover),
            ],
          ),
        ),
      ),

    );
  }
}
