import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourist_path/Hotels/hotel1.dart';
import 'package:tourist_path/Hotels/hotel2.dart';
import 'package:tourist_path/screen/widget/constant.dart';
import 'package:url_launcher/url_launcher.dart';

import '../hotels.dart';

class Atribute2 extends StatelessWidget {
  const Atribute2({Key key}) : super(key: key);

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
      "https://www.weathercrave.com/weather-forecast-iraq/city-921006/weather-forecast-baykhal-today";
  launch(ul);
}

Open() {
  String ul =
      "https://www.google.com/maps/place/Gala-i+Bekhal/@36.6188871,44.4902682,14z/data=!3m1!4b1!4m5!3m4!1s0x400682cd7a3c62fd:0xf98e486450b012c0!8m2!3d36.6188889!4d44.5077778";
  launch(ul);
}
