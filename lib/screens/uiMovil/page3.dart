import 'package:flutter/material.dart';
import 'package:portafolio_web_f/utils/utils.dart';

class Page3Movil extends StatelessWidget {
  const Page3Movil({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 900,
      child: Center(child: Text('Repositorios', style: styletitle,)),
    );
  }
}