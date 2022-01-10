import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourist_path/screen/abouts/about.dart';
import 'package:tourist_path/screen/Attributes/atribute.dart';
import 'package:tourist_path/screen/Detail/widget/book.dart';
import 'package:tourist_path/screen/header/my_header.dart';
import 'package:tourist_path/screen/placename/place_and_name.dart';
import 'package:tourist_path/screen/widget/constant.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyHeader(),
          PlaceName(),
          About(),
                Atribute(),
                //Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
                //Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
              //  Atribute( iconUrl: 'lib/svg/hotel.svg',isSelect: true,),
          //Book(),
        ],
      ),
    );
  }
}

