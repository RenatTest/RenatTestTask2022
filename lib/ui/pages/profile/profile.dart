import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:renat_test_task/ui/pages/profile/widgets/avatar.dart';
import 'package:renat_test_task/ui/pages/profile/widgets/email.dart';
import 'package:renat_test_task/ui/pages/profile/widgets/membership.dart';
import 'package:renat_test_task/ui/pages/profile/widgets/name.dart';
import 'package:renat_test_task/ui/pages/profile/widgets/signup_method.dart';
import 'package:renat_test_task/ui/pages/profile/widgets/text_title.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: HexColor('#FFFFFF'),
          ),
        ),
        centerTitle: true,
        backgroundColor: HexColor('#127E00'),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile_edit');
              },
              child: Text(
                'Edit',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: HexColor('#FFFFFF'),
                ),
              ))
        ],
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [HexColor('#000000'), HexColor('#004A8E')])),
        child: Column(
          children: [
            Avatar(),
            TitleText(),
            SignupMethod(),
            Name(),
            Email(),
            Membership(),
          ],
        ),
      ),
    );
  }
}
