import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourist_path/screen/Detail/detail_screen.dart';
import 'package:tourist_path/screen/Detail/widget/detail_screen1.dart';
import 'package:tourist_path/screen/Detail/widget/detail_screen2.dart';
import 'package:tourist_path/screen/Detail/widget/detail_screen3.dart';
import 'package:tourist_path/screen/Detail/widget/detail_screen4.dart';
import 'package:tourist_path/screen/Detail/widget/detail_screen5.dart';
import 'package:tourist_path/screen/Detail/widget/detail_screen6.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3))
          ]),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Container(
              padding: EdgeInsets.all(6),
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ),
            border: InputBorder.none,
            hintText: 'Search Here...'),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final places = [
    "Bexal",
    "Dukan Lake",
    "Sami Abdulrahman Park",
    "Arbil Castle",
    "Chavi Land",
    "Ahmad Awa",
    "Sherwana Castle"
  ];
  final recentPlaces = [];

  @override
  List<Widget> buildActions(BuildContext context) {
    // Action for appbar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on the left of the app bar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Show some result based on the selection
    if (query.isEmpty) {
      return null;
    }
    if (query.startsWith("Bexal")) {
      return DetailScreen1();
    }
    if (query.startsWith("Be")) {
      return DetailScreen1();
    }
    if (query.startsWith("Dukan")) {
      return DetailScreen2();
    }
    if (query.startsWith("Du")) {
      return DetailScreen2();
    }
    if (query.startsWith("Arbil")) {
      return DetailScreen3();
    }
    if (query.startsWith("Ar")) {
      return DetailScreen3();
    }
    if (query.startsWith("Chavi")) {
      return DetailScreen4();
    }
    if (query.startsWith("Ch")) {
      return DetailScreen4();
    }
    if (query.startsWith("Ahmad")) {
      return DetailScreen5();
    }
    if (query.startsWith("Ah")) {
      return DetailScreen5();
    }
    if (query.startsWith("Sherwana")) {
      return DetailScreen6();
    }
    if (query.startsWith("Sh")) {
      return DetailScreen6();
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // SHow when someone searches for something
    final suggestionList = query.isEmpty
        ? recentPlaces
        : places.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.park),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey),
                )
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
