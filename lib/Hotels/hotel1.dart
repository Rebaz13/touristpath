import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:tourist_path/Hotels/hotelh/newrecipe.dart';

class Hotel1 extends StatelessWidget {
  const Hotel1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          // color: Colors.grey[300],
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                FlutterIcons.home_outline_mco,
                color: Colors.blue,
              ),
              Icon(
                FlutterIcons.account_group_outline_mco,
              ),
              Icon(
                FlutterIcons.heart_outlined_ent,
              ),
              Icon(
                FlutterIcons.account_outline_mco,
              ),
            ],
          ),
        ),
        body: SafeArea(
            bottom: false,
            child: DefaultTabController(
              length: 3,
              initialIndex: 0,
              child: Column(children: [
                SizedBox(
                  height: 40,
                ),
                TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(
                      text: "     Hotels".toUpperCase(),
                    ),
                    Tab(
                      text: "   Favourites".toUpperCase(),
                    ),
                    Tab(
                      text: "Categories".toUpperCase(),
                    ),
                  ],
                  labelColor: Colors.black,
                  indicator: DotIndicator(
                    color: Colors.black,
                    distanceFromCenter: 16,
                    radius: 3,
                    paintingStyle: PaintingStyle.fill,
                  ),
                  unselectedLabelColor: Colors.black.withOpacity(0.4),
                  labelPadding: EdgeInsets.symmetric(horizontal: 24),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Home1(),
                      Container(),
                      Container(),
                    ],
                  ),
                )
              ]),
            )));
  }
}
