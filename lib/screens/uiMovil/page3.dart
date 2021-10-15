import 'package:flutter/material.dart';

import 'package:portafolio_web_f/utils/utils.dart';

class Page3Movil extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 2100,
        minHeight: 2000
      ),
      padding: EdgeInsets.all(20),
      width: 500,
      height: MediaQuery.of(context).size.height * 0.95,
      child: Column(
        children: [
          Text('Portafolio', style: styletitle),
          SizedBox(height: 50),
          for (var i = 0; i < repos.length; i++) 
            repos[i]
        ],
      ),
    );
  }
}

