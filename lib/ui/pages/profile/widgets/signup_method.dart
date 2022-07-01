import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignupMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 19),
        child: Column(
          children: [
            Text('Signup Method',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: HexColor('#FFFFFF'),
                )),
            SizedBox(
              height: 5,
            ),
            Text('Text_Text_Text_Text_Text',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: HexColor('#18AD00'),
                )),
          ],
        ));
  }
}
