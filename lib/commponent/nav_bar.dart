import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app_ui/constants.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 40),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 20,
              offset: const Offset(0, 10),
              color: Colors.black.withAlpha(20))
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          BottomNavItem(
            icon: FontAwesomeIcons.house,
            isActive: true,
          ),
          BottomNavItem(
            icon: FontAwesomeIcons.calendar,
            isActive: false,
          ),
          BottomNavItem(
            icon: FontAwesomeIcons.search,
            isActive: false,
          ),
          BottomNavItem(
            icon: FontAwesomeIcons.user,
            isActive: false,
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final bool isActive;

  const BottomNavItem({required this.icon, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: isActive ? kPrimaryColor : Colors.grey,
            )),
        const Spacer(),
        Container(
          height: 4,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: isActive ? kPrimaryColor : Colors.grey,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
