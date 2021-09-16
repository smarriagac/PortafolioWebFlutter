import 'package:flutter/material.dart';

class Page1Movil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      constraints: BoxConstraints(
        maxWidth: 500
      ),
      height: 1100,
      child: Text('Hola widget'),
    );
  }
}