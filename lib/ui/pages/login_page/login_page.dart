import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'widgets/create_account_text.dart';
import 'widgets/inform_text.dart';
import 'widgets/login_email_area.dart';
import 'widgets/login_google_button.dart';
import 'widgets/new_account_text.dart';
import 'widgets/or_row.dart';
import 'widgets/title_text.dart';

class LoginPage extends StatelessWidget {
  final _blankFocusNode = new FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(_blankFocusNode);
        },
        behavior: HitTestBehavior.opaque,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TitleText(),
                InformText(),
                LoginGoogleButton(),
                OrRow(),
                LoginEmailArea(),
                CreateAccountText(),
                NewAccountText(),
              ],
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [HexColor('#000000'), HexColor('#004A8E')])),
          ),
        ),
      ),
    );
  }
}
