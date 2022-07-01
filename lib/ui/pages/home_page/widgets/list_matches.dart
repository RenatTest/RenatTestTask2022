import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:renat_test_task/provider/theme_provider.dart';

class ListMatches extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final colorTitle =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? '#127E00'
            : '#FFFFFF';

    final colorItems =
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

    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('items').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) return Text('No games');
        return RawScrollbar(
            radius: Radius.circular(5),
            thumbColor: HexColor('#127E00'),
            thickness: 5,
            isAlwaysShown: true,
            controller: _scrollController,
            child: ListView.builder(
                controller: _scrollController,
                itemCount: snapshot.data.docs.length,
                itemBuilder: (BuildContext context, int index) => Container(
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
                        left: 8,
                        right: 13,
                        top: 5,
                      ),
                      padding: EdgeInsets.all(7),
                      height: 94,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    snapshot.data.docs[index].get('game'),
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: HexColor(colorTitle),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    snapshot.data.docs[index].get('place'),
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: HexColor('#FFFFFF'),
                                    ),
                                  ),
                                  Text(
                                    snapshot.data.docs[index].get('tournament'),
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: HexColor('#FFFFFF'),
                                    ),
                                  ),
                                  Text(
                                    snapshot.data.docs[index].get('data') +
                                        ' ${snapshot.data.docs[index].get('time')}',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: HexColor('#FFFFFF'),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Container(
                            color: HexColor('#FFFFFF'),
                            height: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Bet',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: HexColor(colorItems),
                                    ),
                                  ),
                                  Text(
                                    snapshot.data.docs[index].get('bet'),
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: HexColor('#127E00'),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Confidence',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: HexColor(colorItems),
                                    ),
                                  ),
                                  Text(
                                    snapshot.data.docs[index]
                                            .get('confidence') +
                                        '%',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: HexColor('#127E00'),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Odd',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: HexColor(colorItems),
                                    ),
                                  ),
                                  Text(
                                    snapshot.data.docs[index].get('odd'),
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: HexColor('#127E00'),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )));
      },
    );
  }
}
