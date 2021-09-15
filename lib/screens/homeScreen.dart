import 'package:flutter/material.dart';
import 'package:portafolio_web_f/utils/utils.dart';
import 'package:portafolio_web_f/widgets/barTitleWidget.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgraundColor,
      body: Column(
        children: [
          BarTitleWidget(),
        ],//color: Colors.red,
      )
  );
  }
}