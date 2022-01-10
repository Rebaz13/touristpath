import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tourist_path/screen/Log_in_screen.dart';
import 'package:tourist_path/tourist_destination.dart';

import 'aboutus.dart';
import 'models/user_model.dart';
class NavBar extends StatelessWidget {
  set loggedInUser(UserModel loggedInUser) {}


  @override
  Widget build(BuildContext context) {
    User user = FirebaseAuth.instance.currentUser;
    UserModel loggedInUser = UserModel();


    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          UserAccountsDrawerHeader(accountName: Text("${loggedInUser.firstName} ${loggedInUser.secondName}"),
            accountEmail: Text("${loggedInUser.email}"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: new Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/dfe92872927813.5bf80ce4072dc.gif',
              width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage ('https://i.pinimg.com/originals/b4/4c/66/b44c665c88d2d14d1b4a6904bd133acb.gif',
              ),
                fit: BoxFit.cover,
              ),
             ),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text('Account'),
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder:(context) => TouristDestination()),);
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorite'),
            onTap: ()=> null,
          ),
          ListTile(
            leading: Icon(Icons.cloud),
            title: Text('Weather'),
            onTap: ()=> null,
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorite'),
            onTap: ()=> null,
          ),
          ListTile(
            leading: Icon(Icons.person_sharp),
            title: Text('About Us'),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder:(context) => AboutUs()),);
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Log-Out'),
            onTap: (){
              logout(context);
            }
          ),

        ],
      ),
    );
  }
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
