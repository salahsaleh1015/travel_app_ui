import 'package:flutter/material.dart';

import '../constants.dart';

class CategoriesList extends StatefulWidget {

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> placesCategories = [
      'popular',
      'featured',
      'most visited',
      'Europe',
      'asia',
      'africa',
      'America',
      'Australia',
    ];
    return Padding(
      padding: EdgeInsets.all(10),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: placesCategories.length,
            itemBuilder:( context ,  index)=> Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Text(
                  placesCategories[index],
                  style:  TextStyle(
                    color: selectedIndex==index?kPrimaryColor: kTextColor,
                    fontSize: 20,
                    fontWeight:selectedIndex==index?FontWeight.bold: FontWeight.normal


                  ),
                ),
              ),
            ) ),
      ),
    );
  }
}
