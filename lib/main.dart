import 'package:book_store_apps/screens/home_screen.dart';
import 'package:book_store_apps/screens/selected_book_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          splashColor: Colors.transparent, highlightColor: Colors.transparent),
      home: HomeScreen(),
      routes: {"/homeScreen": (context) => new HomeScreen()},
    );
  }
}
