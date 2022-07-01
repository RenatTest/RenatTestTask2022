import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Email extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 19),
        child: Column(
          children: [
            Text('Email',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: HexColor('#FFFFFF'),
                )),
            SizedBox(
              height: 5,
            ),
            Text(user.email,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: HexColor('#18AD00'),
                )),
          ],
        ));
  }
}
