import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ShortSButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          margin: EdgeInsets.only(left: 18, right: 18),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(HexColor('#18AD00')),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/shorts_button_icon.png',
                  height: 32,
                  width: 32,
                ),
                Text('399.99 UAH / WEEK',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: HexColor('#FFFFFF'),
                    )),
                Container(),
              ],
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 5, left: 18, right: 18),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(HexColor('#18AD00')),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/shorts_button_icon.png',
                  height: 32,
                  width: 32,
                ),
                Text('999.99 UAH / MONTH',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: HexColor('#FFFFFF'),
                    )),
                Container(),
              ],
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 5, left: 18, right: 18),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(HexColor('#18AD00')),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/shorts_button_icon.png',
                  height: 32,
                  width: 32,
                ),
                Text('1699.99 UAH / QUARTER',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: HexColor('#FFFFFF'),
                    )),
                Container(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
