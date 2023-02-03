import 'package:flutter/material.dart';
import 'package:travel_app_ui/constants.dart';
import 'package:travel_app_ui/responsive.dart';

class Recommended extends StatelessWidget {
  const Recommended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children:  [
                const Text("Recommended",style: TextStyle(
                    color: kTextColor,
                    fontSize: 25
                ),),
                const Spacer(),
                Text("view All",style: TextStyle(
                    color: Colors.blue,
                    fontSize:isTab(context)?25: 15
                ),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
