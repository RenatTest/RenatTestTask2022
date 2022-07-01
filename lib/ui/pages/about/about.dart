import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:renat_test_task/ui/pages/about/widgets/about_text.dart';
import 'package:renat_test_task/ui/pages/about/widgets/avatar_about.dart';
import 'package:renat_test_task/ui/pages/about/widgets/contact_email.dart';
import 'package:renat_test_task/ui/pages/about/widgets/title_text.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: HexColor('#FFFFFF'),
          ),
        ),
        centerTitle: true,
        backgroundColor: HexColor('#127E00'),
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
            AvatarAbout(),
            TitleText(),
            ContactEmail(),
            AboutText(),
          ],
        ),
      ),
    );
  }
}
