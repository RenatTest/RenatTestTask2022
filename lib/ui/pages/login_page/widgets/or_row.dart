import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OrRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 1,
            width: 130,
            color: HexColor('#FFFFFF'),
          ),
          SizedBox(
            width: 5,
          ),
          Text('OR',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: HexColor('#FFFFFF'),
              )),
          SizedBox(
            width: 5,
          ),
          Container(
            height: 1,
            width: 130,
            color: HexColor('#FFFFFF'),
          ),
        ],
      ),
    );
  }
}
