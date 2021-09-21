import 'package:flutter/material.dart';

import 'package:portafolio_web_f/utils/utils.dart';

class Page3Movil extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 500,
      height: 1900,
      child: Column(
        children: [
          Text('Portafolio', style: styletitle),
          SizedBox(height: 50),
          /* Column(
            children: repos.map((e) => e).toList(),
          ) */
          for (var i = 0; i < repos.length; i++) 
            repos[i]
          
        ],
      ),
    );
  }
}

