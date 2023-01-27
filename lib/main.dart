import 'package:flutter/material.dart';
import 'package:travel_app_ui/screens/home/home.dart';
import 'package:travel_app_ui/screens/welcome/walcome.dart';

import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'travel app UI',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        backgroundColor: kBackgroundColor,
        //textTheme: GoogleFonts.merriweatherTextTheme(Theme.of(context).textTheme)
      ),
      home: const WelcomeScreen(),
    );
  }
}

