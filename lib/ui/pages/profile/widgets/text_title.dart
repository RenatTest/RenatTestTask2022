import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TitleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 35),
      child: Text('Wise Prediction',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: HexColor('#FFFFFF'),
          )),
    );
  }
}
