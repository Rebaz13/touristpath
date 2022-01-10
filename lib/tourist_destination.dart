import 'package:flutter/material.dart';
class TouristDestination extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(

            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),
              ),
            ),
              // color: Colors.purple,
          )
        ],
      ),
    );
  }
}
