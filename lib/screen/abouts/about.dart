import 'package:flutter/material.dart';
import 'package:tourist_path/screen/widget/constant.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

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
          ,Text('The park is one of the largest park in Iraq. It was designed and built in two stages on an area of 800 donums of land.'
              'The park houses many tourist facilities like restaurants, playgrounds, streets and lanes, radio instruments and giant movie screens. Thousands of citizens visit for pleasure.'
              'located west Erbil’s centre, its main gate is opposite the Parliament building.',
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
