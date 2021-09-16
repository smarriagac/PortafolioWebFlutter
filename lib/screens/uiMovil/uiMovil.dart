import 'package:flutter/material.dart';
import 'package:portafolio_web_f/screens/uiMovil/Page1.dart';

import 'package:portafolio_web_f/widgets/barTitleWidget.dart';

class UiMovilScreen extends StatelessWidget {
  const UiMovilScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: double.infinity,
        ),
        child: Column(
          children: [
            BarTitleWidget(),
            //SizedBox(height: 900),
            Page1Movil(),
            //Text('movil')
          ],//color: Colors.red,
        ),
      ),
    );
  }
}