import 'package:flutter/material.dart';
import 'package:travel_app_ui/commponent/categories_list.dart';
import 'package:travel_app_ui/commponent/most_places.dart';
import 'package:travel_app_ui/commponent/nav_bar.dart';
import 'package:travel_app_ui/commponent/recommended.dart';
import '../../commponent/hamburger_menu.dart';
import '../../commponent/recommended_places.dart';
import '../../commponent/user_avatar.dart';
import '../../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(
        title: "Discover",
        actions: [
          const UserAvatar(),
        ],
        leading: const HamBurgerMenu(),
      ),
      bottomNavigationBar: const NavBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CategoriesList(),
            MostPlaces(),
            const Recommended(),
            RecommendedPlaces()
          ],
        ),
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
