import 'package:flutter/material.dart';
import 'package:portafolio_web_f/providers/drawelProvider.dart';

import 'package:portafolio_web_f/utils/utils.dart';
import 'package:portafolio_web_f/screens/uiMovil/uiMovil.dart';
import 'package:portafolio_web_f/widgets/drawel.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {

    final key = Provider.of<DrawelProviders>(context);

    return Scaffold(
      backgroundColor: backgraundColor,
      body: LayoutHome(
        appMovil: UiMovilScreen(),
        appWeb: Text('Hola Web'),
      ),
      endDrawer: DrawelMovil(),
      key: key.scaffoldkey,
  );
  }
}

class LayoutHome extends StatelessWidget {
  
  final Widget appMovil;
  final Widget appWeb;

  const LayoutHome({ 
    required this.appMovil, 
    required this.appWeb,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) { 
        //print(constraints.maxWidth);
        return AnimatedSwitcher(
          duration: Duration(milliseconds: 2000),
          child: (constraints.maxWidth > 900) ? this.appWeb : appMovil,
        );
      },
    );
  }
}