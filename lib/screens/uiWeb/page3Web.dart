import 'package:flutter/material.dart';

import 'package:portafolio_web_f/utils/utils.dart';

class Page3Web extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
      width: double.infinity,
      height: 2600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Portafolio', style: styletitleweb),
          SizedBox(height: 80),
          for (var i = 0; i < reposWeb.length; i++) 
            reposWeb[i]
          
        ],
      ),
    );
  }
}
