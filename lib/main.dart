import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tourist_path/screen/Log_in_screen.dart';
import 'package:tourist_path/screen/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, home: HomeScreen(), //LoginScreen()
    );
  }
}
