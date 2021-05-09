import 'package:flutter/material.dart';
import 'package:recipe_firebaseapp/pages/homepage.dart';
import 'package:recipe_firebaseapp/pages/hometext.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}
