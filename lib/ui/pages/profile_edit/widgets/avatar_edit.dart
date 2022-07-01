import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AvatarEdit extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 39),
      child: GestureDetector(
        onTap: () {
          print('Change user photo');
        },
        child: CircleAvatar(
          radius: 45,
          backgroundColor: HexColor('#127E00'),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(user.photoURL),
          ),
        ),
      ),
    );
  }
}
