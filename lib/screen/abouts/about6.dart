import 'package:flutter/material.dart';
import 'package:tourist_path/screen/widget/constant.dart';

class About6 extends StatelessWidget {
  const About6({Key key}) : super(key: key);

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
          ,Text('This beautiful resort is situated 84 kilometers east of Sulaimaniya, near the town of Khurmall. It is in a richly green valley, crossed by the Zallim River which flows down the middle of the mountain. A waterfall adds extra beauty to the surroundings, and because of huge number of toursits that visit ahmad awa many htoels and places for travelers build.',
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
