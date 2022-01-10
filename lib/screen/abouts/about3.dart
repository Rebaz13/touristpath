import 'package:flutter/material.dart';
import 'package:tourist_path/screen/widget/constant.dart';

class About3 extends StatelessWidget {
  const About3({Key key}) : super(key: key);

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
          ,Text('The famous Dukan Lake is one of the most beatiful sites in the Kurdistan Region. Surrounded by yellow and green hills, the bright blue lake is ideal for swimming, boating and fishing. The lakeshore resort contains several hotels, a selections of cabins, restaurants and other facilities for visitors. A visit is highly recommended. ',
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
