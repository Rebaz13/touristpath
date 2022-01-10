import 'package:flutter/material.dart';
import 'package:tourist_path/screen/Attributes/attribute5.dart';
import 'package:tourist_path/screen/abouts/about5.dart';
import 'package:tourist_path/screen/header/my_header5.dart';
import 'package:tourist_path/screen/placename/place_name5.dart';
class DetailScreen4 extends StatelessWidget {
  const DetailScreen4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        children: [
          MyHeader5(),
          PlaceName5(),
          About5(),
          Atribute5(),
          //Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //  Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //Book(),
        ],
      ),
    );
  }
}
