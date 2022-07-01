import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'widgets/avatar_edit.dart';
import 'widgets/change_theme_button.dart';
import 'widgets/change_user_data.dart';

class ProfileEdit extends StatelessWidget {
  final _blankFocusNode = new FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Edit',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: HexColor('#FFFFFF'),
          ),
        ),
        centerTitle: true,
        backgroundColor: HexColor('#127E00'),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(_blankFocusNode);
        },
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
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
                AvatarEdit(),
                ChangeUserData(),
                ChangeThemeButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
