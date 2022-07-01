import 'package:flutter/material.dart';

class AvatarAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 39),
      child: CircleAvatar(
        backgroundColor: Colors.white.withOpacity(0),
        radius: 45,
        child: Image.asset(
          'assets/about_icon.png',
        ),
      ),
    );
  }
}
