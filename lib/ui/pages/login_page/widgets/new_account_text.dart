import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NewAccountText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('For a new account');
      },
      child: Text('For a new account',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: HexColor('#FFFFFF'),
          )),
    );
  }
}
