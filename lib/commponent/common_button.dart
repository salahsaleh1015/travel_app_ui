import 'package:flutter/material.dart';
import 'package:travel_app_ui/constants.dart';

class CommonButton extends StatelessWidget {
  final GestureTapCallback tapEvent;
  final String title;

  const CommonButton({ required this.tapEvent, required this.title});


  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap:tapEvent,
      child:Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(child:  Text(title,style: const TextStyle(color: Colors.white))),
      ) ,
    );
  }
}
