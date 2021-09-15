import 'package:flutter/material.dart';
import 'package:portafolio_web_f/screens/homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portafolio Web',
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}