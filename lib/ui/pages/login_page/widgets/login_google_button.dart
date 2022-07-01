import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:renat_test_task/provider/google_sign_in.dart';

class LoginGoogleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 65, right: 65),
      child: ElevatedButton(
        onPressed: () async {
          print('Continue with Google');
          final provider =
              Provider.of<GoogleSignInProvider>(context, listen: false);
          provider
              .googleLogin()
              .then((value) => Navigator.pushNamed(context, '/home_page'));
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(HexColor('#FFFFFF')),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/google_button_icon.png',
              height: 21,
              width: 21,
            ),
            SizedBox(
              width: 2,
            ),
            Text('Continue with Google',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: HexColor('#000000'),
                ))
          ],
        ),
      ),
    );
  }
}
