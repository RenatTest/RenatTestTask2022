import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginEmailArea extends StatefulWidget {
  @override
  _LoginEmailAreaState createState() => _LoginEmailAreaState();
}

class _LoginEmailAreaState extends State<LoginEmailArea> {
  final formKey = GlobalKey<FormState>();

  var email;
  var password;

  TextEditingController emailTextEditingController =
      new TextEditingController();

  TextEditingController passwordTextEditingController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 242,
      width: 310,
      margin: EdgeInsets.only(left: 25, right: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: HexColor('#FFFFFF'),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 13),
            child: Text('Sign in with Email',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: HexColor('#000000'),
                )),
          ),
          Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      onChanged: (val) {
                        email = val;
                      },
                      validator: (value) {
                        return RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value)
                            ? null
                            : 'Please enter your email';
                      },
                      controller: emailTextEditingController,
                      textAlign: TextAlign.left,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: HexColor('#8F8C8C'),
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      onChanged: (val) {
                        password = val;
                      },
                      validator: (value) {
                        return value.length > 5
                            ? null
                            : 'Please enter a password of at least 6 characters';
                      },
                      controller: passwordTextEditingController,
                      textAlign: TextAlign.left,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: HexColor('#8F8C8C'),
                          )),
                    ),
                  )
                ],
              )),
          Container(
            width: 117,
            height: 34,
            margin: EdgeInsets.only(bottom: 13),
            child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState.validate()) {
                    print('Sign in');
                  }
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(HexColor('#127E00')),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: Text('Sign in',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: HexColor('#FFFFFF'),
                    ))),
          ),
        ],
      ),
    );
  }
}
