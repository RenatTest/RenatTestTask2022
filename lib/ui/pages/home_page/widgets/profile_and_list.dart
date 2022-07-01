import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:renat_test_task/ui/pages/home_page/widgets/drawer_section.dart';
import 'package:renat_test_task/ui/pages/home_page/widgets/list_matches.dart';
import 'package:renat_test_task/ui/pages/home_page/widgets/shorts.dart';

class ProfileAndList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          drawer: SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: DrawerSection()),
          appBar: AppBar(
            title: Text(
              'Wise Prediction',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: HexColor('#FFFFFF'),
              ),
            ),
            centerTitle: true,
            backgroundColor: HexColor('#127E00'),
            bottom: PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, 50),
              child: ColoredBox(
                color: HexColor('##004A8E'),
                child: TabBar(
                  indicatorColor: HexColor('#FFFFFF'),
                  tabs: [
                    Tab(
                      child: Text(
                        'Free',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: HexColor('#FFFFFF'),
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Pro',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: HexColor('#FFFFFF'),
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Shorts',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: HexColor('#FFFFFF'),
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Stats',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: HexColor('#FFFFFF'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            physics: BouncingScrollPhysics(),
            children: [
              Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(child: ListMatches()),
                  ],
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: HexColor('#002148')),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: HexColor('#002148')),
              ),
              Container(
                child: Shorts(),
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: HexColor('#002148')),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: HexColor('#002148')),
              ),
            ],
          )),
    );
  }
}
