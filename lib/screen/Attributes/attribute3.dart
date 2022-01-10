import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourist_path/Hotels/hotel1.dart';
import 'package:tourist_path/Hotels/hotel3.dart';
import 'package:tourist_path/screen/widget/constant.dart';
import 'package:url_launcher/url_launcher.dart';

import '../hotels.dart';

class Atribute3 extends StatelessWidget {
  const Atribute3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: mPrimaryColor,
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3))
              ]),
          child: FlatButton(
              child: SvgPicture.asset('lib/svg/map.svg'),
              padding: EdgeInsets.all(4),
              color: Colors.pink.shade300,
              onPressed: () {
                Open();
              }),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: 50,
          width: 180,
          decoration: BoxDecoration(
              color: mPrimaryColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3))
              ]),
          child: FlatButton(
              child: Text("Hotels"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Hotel1()),
                );
              }),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: mPrimaryColor,
              borderRadius: BorderRadius.circular(22),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3))
              ]),
          child: FlatButton(
              child: SvgPicture.asset('lib/svg/pp2.svg'),
              padding: EdgeInsets.all(4),
              color: Colors.pink.shade300,
              onPressed: () {
                Open1();
              }),
        ),
      ],
    );
  }
}

void Open1() {
  String ul =
      "https://www.accuweather.com/en/iq/dukan/207017/weather-forecast/207017";
  launch(ul);
}

Open() {
  String ul =
      "https://www.google.com/maps?q=lake+dukan+location&um=1&ie=UTF-8&sa=X&ved=2ahUKEwii8bnqlJ71AhVGSfEDHUVhBvEQ_AUoAnoECAIQBA";
  launch(ul);
}
