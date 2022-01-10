import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourist_path/screen/widget/constant.dart';

class PlaceName3 extends StatelessWidget {
  const PlaceName3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 30,
        right: 30,
        top: 12,
        bottom: 24,
      ),
      decoration: BoxDecoration(
          color: mSecondaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(36),
            bottomRight: Radius.circular(36),
          )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Dukan Lake',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text('Kurdistan Slemani',
                style: TextStyle(
                  fontSize: 12,
                ),
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset('lib/svg/Star.svg',color: Colors.yellow.shade600,),
              Text('3.8',style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
            ],
          )
        ],
      ),
    );
  }
}
