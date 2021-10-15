import 'package:flutter/material.dart';

import 'package:portafolio_web_f/utils/utils.dart';

class Page3Web extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
      //width: double.infinity,
      constraints: BoxConstraints(
        maxWidth: double.infinity - 150
      ),
      height: 2500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Portafolio', style: styletitleweb),
          SizedBox(height: 30),
          for (var i = 0; i < reposWeb.length; i++) 
            reposWeb[i]
          
        ],
      ),
    );
  }
}

