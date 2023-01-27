import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipOval(
        child: Image.asset("assets/images/avatar.png"),
      ),
    );
  }
}
