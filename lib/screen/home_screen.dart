import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourist_path/NavBar.dart';
import 'package:tourist_path/model/place.dart';
import 'package:tourist_path/models/user_model.dart';
import 'package:tourist_path/screen/widget/catagory_list.dart';
import 'package:tourist_path/screen/widget/constant.dart';
import 'package:tourist_path/screen/widget/place_staggered.dart';
import 'package:tourist_path/screen/widget/search_input.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  User user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }
  // Page Controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              })
        ],
      ),
      drawer: NavBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SearchInput(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Explore Kurdistan\n With Us!',
              style: TextStyle(fontSize: 30),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          CatagorytList(),
          Expanded(
            child: PlaceStaggerdview(),
          )
        ],
      ),
    );
  }
}
