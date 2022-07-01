import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:renat_test_task/provider/google_sign_in.dart';

class DrawerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Drawer(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 26),
                  color: HexColor('#127E00'),
                  height: 163,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wise Prediction',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: HexColor('#FFFFFF'),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Text_Text_Text_Text_Text_',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: HexColor('#FFFFFF'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 18.67, top: 34),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/profile');
                        },
                        behavior: HitTestBehavior.opaque,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/drawer_profile.png',
                              height: 26.23,
                              width: 26.23,
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: HexColor('#127E00'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.84,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/guidlines');
                        },
                        behavior: HitTestBehavior.opaque,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/drawer_guidlines.png',
                              height: 26.23,
                              width: 26.23,
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Text(
                              'Guidlines',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: HexColor('#127E00'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.84,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/about');
                        },
                        behavior: HitTestBehavior.opaque,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/drawer_about.png',
                              height: 26.23,
                              width: 26.23,
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Text(
                              'About',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: HexColor('#127E00'),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 56.25,
                      ),
                      GestureDetector(
                        onTap: () {
                          final provider = Provider.of<GoogleSignInProvider>(
                              context,
                              listen: false);
                          provider.logout();
                        },
                        behavior: HitTestBehavior.opaque,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/drawer_logout.png',
                              height: 26.23,
                              width: 26.23,
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Text(
                              'Logout',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: HexColor('#127E00'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
