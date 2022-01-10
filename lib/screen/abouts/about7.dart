import 'package:flutter/material.dart';
import 'package:tourist_path/screen/widget/constant.dart';

class About7 extends StatelessWidget {
  const About7({Key key}) : super(key: key);

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
          ,Text('Located at the entrance of Kalar town near the Sirwan River, Sherwana Castle stands out as an impressive fortress and beautiful addition to the area’s scenery. It attracts thousands of tourists each year from around the world. We had to climb more than a hundred stairs to reach the base of the castle.',
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
