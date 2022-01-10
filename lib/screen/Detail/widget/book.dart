import 'package:flutter/material.dart';
import 'package:tourist_path/screen/widget/constant.dart';

class Book extends StatelessWidget {
  const Book({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 16),
      child: FlatButton(
        shape: RoundedRectangleBorder (
          borderRadius: BorderRadius.circular(8),
        )
        ,color: mPrimaryColor,
        onPressed: (){

        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          alignment: Alignment.center,
          child: Text('Book Now',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
        ),
      ),
    );
  }
}