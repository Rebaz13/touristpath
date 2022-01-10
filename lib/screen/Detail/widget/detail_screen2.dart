import 'package:flutter/material.dart';
import 'package:tourist_path/screen/Attributes/attribute3.dart';
import 'package:tourist_path/screen/abouts/about3.dart';
import 'package:tourist_path/screen/header/my_header2.dart';
import 'package:tourist_path/screen/placename/place_name3.dart';
class DetailScreen2 extends StatelessWidget {
  const DetailScreen2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
            MyHeader3(),
          PlaceName3(),
          About3(),
          Atribute3(),
          //Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //  Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //Book(),
        ],
      ),
    );
  }
}
