import 'package:flutter/material.dart';
import 'package:travel_app_ui/responsive.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height:isTab(context)? size.height*0.6:size.height*0.5,
      child:  ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),

        ),
        child: Image.asset(
            height: isTab(context)? size.height*0.6:size.height*0.5,
            "assets/images/welcome.jpg",fit: BoxFit.cover),

      ),
    );
  }
}
