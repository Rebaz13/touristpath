import 'package:flutter/material.dart';
import 'package:tourist_path/screen/widget/constant.dart';

class About4 extends StatelessWidget {
  const About4({Key key}) : super(key: key);

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
          ,Text('Erbil Citadel is a fortified settlement on top of an imposing ovoid-shaped tell (a hill created by many generations of people living and rebuilding on the same spot) in the Kurdistan region, no days Arbil Castel is a part of tourism places many tourists travel for from far away to see that historical place',
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
