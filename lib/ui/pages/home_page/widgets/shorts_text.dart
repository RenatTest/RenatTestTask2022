import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ShortsText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 30),
      child: Text(
        'By contin...',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: HexColor('#18AD00'),
        ),
      ),
    );
  }
}
