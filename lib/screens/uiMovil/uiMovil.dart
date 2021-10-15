import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:portafolio_web_f/providers/scrollProvider.dart';
import 'package:portafolio_web_f/widgets/barTitleWidget.dart';
import 'package:portafolio_web_f/screens/uiMovil/uiMovilScreen.dart';



class UiMovilScreen extends StatelessWidget {
  const UiMovilScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final scrollLisviwe = Provider.of<ScrollProviderController>(context);

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      controller: scrollLisviwe.controler,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: double.infinity,
        ),
        child: Column(
          children: [
            BarTitleWidget(),
            //SizedBox(height: 900),
            Page1Movil(),
            SizedBox(height: 10),
            Page2Movil(),
            SizedBox(height: 10),
            Page3Movil(),
            SizedBox(height: 10),
            Page4Movil(),

            //Text('movil')
          ],//color: Colors.red,
        ),
      ),
    );
  }
}