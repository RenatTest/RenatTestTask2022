import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:renat_test_task/ui/pages/home_page/widgets/shorts_buttons.dart';
import 'package:renat_test_task/ui/pages/home_page/widgets/shorts_graph.dart';
import 'package:renat_test_task/ui/pages/home_page/widgets/shorts_text.dart';
import 'package:renat_test_task/ui/pages/home_page/widgets/shorts_title.dart';

class Shorts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: RawScrollbar(
        radius: Radius.circular(5),
        thumbColor: HexColor('#127E00'),
        thickness: 5,
        isAlwaysShown: true,
        child: RawScrollbar(
          radius: Radius.circular(5),
          thumbColor: HexColor('#127E00'),
          thickness: 5,
          isAlwaysShown: true,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                ShortsTitle(),
                ShortSButtons(),
                ShortsText(),
                ShortsGraph(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
