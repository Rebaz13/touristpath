import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourist_path/screen/widget/constant.dart';

class PlaceName7 extends StatelessWidget {
  const PlaceName7({Key key}) : super(key: key);

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
              Text('Sherwana Castle',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text('Kurdistan Kalar',
                style: TextStyle(
                  fontSize: 12,
                ),
              )
            ],
          ),
          Row(
            children: [
              SvgPicture.asset('lib/svg/Star.svg',color: Colors.yellow.shade600,),
              Text('3.9',style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
            ],
          )
        ],
      ),
    );
  }
}
