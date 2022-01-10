import 'package:flutter/material.dart';
import 'package:tourist_path/screen/Attributes/attribute2.dart';
import 'package:tourist_path/screen/abouts/about2.dart';
import 'package:tourist_path/screen/header/my_header1.dart';
import 'package:tourist_path/screen/placename/place_name2.dart';
class DetailScreen1 extends StatelessWidget {
  const DetailScreen1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           MyHeader1(),
          PlaceName2(),
          About2(),
          Atribute2(),
          //Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //  Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //Book(),
        ],
      ),
    );
  }
}
