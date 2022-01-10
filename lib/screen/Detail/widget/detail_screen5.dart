import 'package:flutter/material.dart';
import 'package:tourist_path/screen/Attributes/attribute6.dart';
import 'package:tourist_path/screen/abouts/about6.dart';
import 'package:tourist_path/screen/header/my_header6.dart';
import 'package:tourist_path/screen/placename/place_name6.dart';
class DetailScreen5 extends StatelessWidget {
  const DetailScreen5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          MyHeader6(),
          PlaceName6(),
          About6(),
          Atribute6(),
          //Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //  Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //Book(),
        ],
      ),
    );
  }
}
