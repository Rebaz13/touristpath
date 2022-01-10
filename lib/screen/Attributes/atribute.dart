import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourist_path/Hotels/hotel1.dart';
import 'package:tourist_path/screen/widget/constant.dart';
import 'package:url_launcher/url_launcher.dart';

import '../hotels.dart';

class Atribute extends StatelessWidget {
  const Atribute({Key key}) : super(key: key);

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
      "https://www.weathercrave.com/weather-forecast-iraq/city-159068/weather-forecast-sami-abdulrahman-park-today";
  launch(ul);
}

Open() async {
  String ul =
      "https://www.google.com/maps/place/Sami+Abdulrahman+Park/@36.1910915,43.9830214,17z/data=!3m1!4b1!4m5!3m4!1s0x400722f26411b81d:0x2d199f28766e8aab!8m2!3d36.1910915!4d43.9852101";
  launch(ul);
}
