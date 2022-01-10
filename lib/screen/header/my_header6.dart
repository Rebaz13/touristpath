import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourist_path/screen/widget/constant.dart';

class MyHeader6 extends StatelessWidget {
  const MyHeader6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 360,
      child: Stack(
        children: [
          Image.asset(
            "images/p33.jpg",
            height: 360,
            fit: BoxFit.cover,
          ),
          Positioned(
              left: 30,
              top: 60,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: mBackgroundColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.arrow_back_ios),
                ),
              )),
          Positioned(
            right: 16,
            bottom: 16,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: mSecondaryColor,
                  borderRadius: BorderRadius.circular(36)),
              child: SvgPicture.asset(
                "lib/svg/fv.svg",
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
