import 'package:flutter/material.dart';
import 'package:tourist_path/screen/Attributes/attribute7.dart';
import 'package:tourist_path/screen/abouts/about7.dart';
import 'package:tourist_path/screen/header/my_header7.dart';
import 'package:tourist_path/screen/placename/place_name7.dart';
class DetailScreen6 extends StatelessWidget {
  const DetailScreen6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           MyHeader7(),
          PlaceName7(),
          About7(),
          Atribute7(),
          //Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //  Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //Book(),
        ],
      ),
    );
  }
}
