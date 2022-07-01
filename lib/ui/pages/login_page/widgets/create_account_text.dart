import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CreateAccountText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Create a new Account');
      },
      behavior: HitTestBehavior.opaque,
      child: Container(
        margin: EdgeInsets.only(top: 30, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/create_account_icon1.png',
              height: 8.18,
              width: 8.18,
            ),
            Container(
              margin: EdgeInsets.only(top: 7),
              child: Image.asset(
                'assets/create_account_icon2.png',
                height: 25.89,
                width: 25.89,
              ),
            ),
            Text('Create a new account',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: HexColor('#FFFFFF'),
                ))
          ],
        ),
      ),
    );
  }
}
