import 'package:flutter/material.dart';
import 'package:tourist_path/screen/widget/constant.dart';

class About2 extends StatelessWidget {
  const About2({Key key}) : super(key: key);

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
          ,Text('The Bexal waterfall is one of the most striking picnic locations in Kurdistan. Fresh water exudes from a spring, down a beautiful rock formation. ... The magnificently sculpted mountain ridges, mysterious rivers and delicately eroded canyons surrounding Bexal will surely keep visitors cameras active',
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
