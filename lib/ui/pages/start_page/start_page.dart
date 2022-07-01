import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:renat_test_task/provider/theme_provider.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  var openWebView = false;

  @override
  void initState() {
    final user = FirebaseAuth.instance.currentUser;

    if (openWebView == true) {
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pushNamed(context, '/web_view_page');
      });
    } else if (user == null) {
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pushNamed(context, '/login_page');
      });
    } else {
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pushNamed(context, '/home_page');
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final startPicture =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? 'assets/start_page_logo1.png'
            : 'assets/start_page_logo2.png';
    return Scaffold(
      body: Container(
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/login_page');
            },
            child: Image.asset(
              startPicture,
              height: 134,
              width: 134,
            ),
          ),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [HexColor('#000000'), HexColor('#004A8E')])),
      ),
    );
  }
}
