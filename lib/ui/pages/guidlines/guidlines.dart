import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'widgets/avatar.dart';
import 'widgets/introduction_1.dart';
import 'widgets/introduction_2.dart';
import 'widgets/introduction_3.dart';

class Guidlines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Guidlines',
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
        child: RawScrollbar(
          radius: Radius.circular(5),
          thumbColor: HexColor('#127E00'),
          thickness: 5,
          isAlwaysShown: true,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                AvatarGuidlines(),
                Introduction1(),
                Introduction2(),
                Introduction3(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
