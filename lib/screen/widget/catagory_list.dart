import 'package:flutter/material.dart';
import 'package:tourist_path/screen/widget/constant.dart';
import 'constant.dart';

class CatagorytList extends StatefulWidget {
  @override
  _CatagorytListState createState() => _CatagorytListState();
}

class _CatagorytListState extends State<CatagorytList> {
  int currentSelect = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catagoryList.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentSelect = index;
            });
          },
          child: Container(
            margin: EdgeInsets.only(left: 32),
            child: Text(
              catagoryList[index],
              style: TextStyle(
                fontSize: 16,
                fontWeight:
                    currentSelect == index ? FontWeight.bold : FontWeight.w500,
                color: currentSelect == index ? mPrimaryColor : Colors.black54,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
