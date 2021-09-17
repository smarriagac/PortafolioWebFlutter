import 'package:flutter/material.dart';

class Page2Movil  extends StatelessWidget {
  const Page2Movil ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      constraints: BoxConstraints(
        maxWidth: 500
      ),
      height: 500,
      child: Text('Hola widget 2'),
    );
  }
}