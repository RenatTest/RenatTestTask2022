import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ShortsGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 18, right: 22),
          color: HexColor('#FFFFFF'),
          height: 1,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 314,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: 9, right: 16),
          padding: EdgeInsets.only(top: 13, bottom: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: HexColor('#FFFFFF'),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Accuracy of latest predictions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: HexColor('#127E00'),
                ),
              ),
              Image.asset(
                'assets/shorts_pic.png',
                height: 206,
                width: 318,
              ),
              Text(
                'Accuracy results of latest...',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: HexColor('#000000'),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(left: 18, right: 22, bottom: 100),
          color: HexColor('#FFFFFF'),
          height: 1,
        )
      ],
    );
  }
}
