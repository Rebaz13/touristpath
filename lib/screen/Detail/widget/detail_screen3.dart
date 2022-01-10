import 'package:flutter/material.dart';
import 'package:tourist_path/screen/Attributes/attribute4.dart';
import 'package:tourist_path/screen/abouts/abou4.dart';
import 'package:tourist_path/screen/header/my_header3.dart';
import 'package:tourist_path/screen/placename/place_name4.dart';
class DetailScreen3 extends StatelessWidget {
  const DetailScreen3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyHeader4(),
          PlaceName4(),
          About4(),
          Atribute4(),
          //Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //  Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //Book(),
        ],
      ),
    );
  }
}
