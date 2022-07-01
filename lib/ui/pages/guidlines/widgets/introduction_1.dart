import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:renat_test_task/provider/theme_provider.dart';

class Introduction1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorTitle =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? '#127E00'
            : '#FFFFFF';

    final colorText =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? '#FFFFFF'
            : '#000000';

    final colorContainer1 =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? HexColor('#FFFFFF').withOpacity(0)
            : HexColor('#FFFFFF').withOpacity(0.5);

    final colorContainer2 =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? HexColor('#FFFFFF').withOpacity(0)
            : HexColor('#FFFFFF').withOpacity(0.22);

    final borderWidth =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? 1.0
            : 0.0;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [colorContainer1, colorContainer2]),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          width: borderWidth,
          color: HexColor('#FFFFFF'),
        ),
      ),
      margin: EdgeInsets.only(
        top: 30,
        left: 11,
        right: 15,
        bottom: 5,
      ),
      padding: EdgeInsets.all(7),
      height: 109,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Introduction',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: HexColor(colorTitle),
              )),
          SizedBox(
            height: 5,
          ),
          Container(
            color: HexColor('#FFFFFF'),
            height: 1,
          ),
          SizedBox(
            height: 5,
          ),
          Text('Text_Text_Text_Text_Text_',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: HexColor(colorText),
              ))
        ],
      ),
    );
  }
}
