import 'package:flutter/material.dart';
import 'package:travel_app_ui/screens/home/home.dart';

import '../../commponent/top_banner.dart';
import '../../commponent/welcome_button.dart';
import '../../commponent/welcome_text.dart';
import '../../constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TopBanner(),
            WelcomeText(),
          ],
        ),
      ),
    );
  }
}
