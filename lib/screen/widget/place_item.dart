import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourist_path/screen/Detail/detail_screen.dart';
import 'package:tourist_path/screen/Detail/widget/detail_screen1.dart';
import 'package:tourist_path/screen/Detail/widget/detail_screen2.dart';
import 'package:tourist_path/screen/Detail/widget/detail_screen3.dart';
import 'package:tourist_path/screen/Detail/widget/detail_screen4.dart';
import 'package:tourist_path/screen/Detail/widget/detail_screen5.dart';
import 'package:tourist_path/screen/Detail/widget/detail_screen6.dart';

import 'constant.dart';
import 'constant1.dart';
import 'constant2.dart';
import 'constant3.dart';
import 'constant4.dart';
import 'constant5.dart';
import 'constant6.dart';

class PlaceItem extends StatelessWidget {
  final int index;
  const PlaceItem(this.index, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen1();
                  }));
                  // Navigator.push(context,MaterialPageRoute(builder: (context){return DetailScreen1();},),);
                },
                child: Container(
                  margin: new EdgeInsets.symmetric(horizontal: 10.0),
                  alignment: Alignment.bottomLeft,
                  height: placeList[index].height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            placeList[index].imageurl,
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(16.3)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 44, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(placeList[index].title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                        Text(placeList[index].subtitle,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context){return DetailScreen();}));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailScreen2();
                      },
                    ),
                  );
                },
                child: Container(
                  //  margin: new EdgeInsets.symmetric(horizontal: 10.0),
                  alignment: Alignment.bottomLeft,
                  height: placeList2[index].height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            placeList2[index].imageurl,
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(16.3)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 44, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(placeList2[index].title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                        Text(placeList2[index].subtitle,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen();
                  }));
                  // Navigator.push(context,MaterialPageRoute(builder: (context){return DetailScreen1();},),);
                },
                child: Container(
                  margin: new EdgeInsets.symmetric(horizontal: 10.0),
                  alignment: Alignment.bottomLeft,
                  height: placeList3[index].height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            placeList3[index].imageurl,
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(16.3)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 85, vertical: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(placeList3[index].title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                        Text(placeList3[index].subtitle,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 3,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen3();
                  }));
                  // Navigator.push(context,MaterialPageRoute(builder: (context){return DetailScreen1();},),);
                },
                child: Container(
                  margin: new EdgeInsets.symmetric(horizontal: 10.0),
                  alignment: Alignment.bottomLeft,
                  height: placeList4[index].height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            placeList4[index].imageurl,
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(16.3)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(placeList4[index].title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                        Text(placeList4[index].subtitle,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              //chaviland
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen4();
                  }));
                  // Navigator.push(context,MaterialPageRoute(builder: (context){return DetailScreen1();},),);
                },
                child: Container(
                  margin: new EdgeInsets.symmetric(horizontal: 10.0),
                  alignment: Alignment.bottomLeft,
                  height: placeList5[index].height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            placeList5[index].imageurl,
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(16.3)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(placeList5[index].title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                        Text(placeList5[index].subtitle,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen5();
                  }));
                  // Navigator.push(context,MaterialPageRoute(builder: (context){return DetailScreen1();},),);
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: placeList6[index].height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            placeList6[index].imageurl,
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(16.3)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(placeList6[index].title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                        Text(placeList6[index].subtitle,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen6();
                  }));
                  // Navigator.push(context,MaterialPageRoute(builder: (context){return DetailScreen1();},),);
                },
                child: Container(
                  margin: new EdgeInsets.symmetric(horizontal: 10.0),
                  alignment: Alignment.bottomLeft,
                  height: placeList7[index].height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            placeList7[index].imageurl,
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(16.3)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 106, vertical: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(placeList7[index].title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                        Text(placeList7[index].subtitle,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
