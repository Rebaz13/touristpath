import 'package:flutter/material.dart';
import 'package:tourist_path/screen/widget/constant.dart';

class About5 extends StatelessWidget {
  const About5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),)
          ,Text('Chavy Land is one of the largest tourist cities in the city of Sulaimaniya and the Kurdistan Region. The project consists of fifty species of three-dimensional open world games (various open and closed games) in addition to containing telefric, wax museum, cinema, fountains, water, restaurants, shacks tourism, hotels, tourist cabins, and rest and several cafeterias and fastfood restaurants.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
            ),
          ),
          Text('Read more',
            style: TextStyle(
              color: mPrimaryColor,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
