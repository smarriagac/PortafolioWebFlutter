import 'package:flutter/material.dart';


import 'package:provider/provider.dart';

import 'package:portafolio_web_f/screens/uiWeb/uiWebScreen.dart';
import 'package:portafolio_web_f/providers/scrollProviderWeb.dart';
import 'package:portafolio_web_f/widgets/barTitleWidget.dart';



class UiWebScreen extends StatelessWidget {
  const UiWebScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final scrollLisviwe = Provider.of<ScrollProviderControllerWeb>(context);

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      controller: scrollLisviwe.controlerweb,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: double.infinity,
        ),
        child: Column(
          children: [
            BarTitleWidget(),

            Page1Web(),
            SizedBox(height: 200),
            Page2Web(),
            SizedBox(height: 200),
            Page3Web(),
            Page4Web(),

          ],//color: Colors.red,
        ),
      ),
    );
  }
}