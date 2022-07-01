import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ShortsTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 30),
      child: Text(
        'Join Our VIP Club',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: HexColor('#FFFFFF'),
        ),
      ),
    );
  }
}
