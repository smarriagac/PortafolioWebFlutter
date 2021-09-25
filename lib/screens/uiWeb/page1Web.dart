import 'package:flutter/material.dart';
import 'package:portafolio_web_f/utils/utils.dart';

class Page1Web extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    String str="Ingeniero Electrónico entusiasta por conocer nuevas tecnologías.";

    return Container(
      padding: EdgeInsets.fromLTRB(50, 250.0, 30.0, 20.0),
      //color: Colors.red,
      constraints: BoxConstraints(
        maxWidth: double.infinity
      ),
      height: size.height - 65,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.start,
          children:[        
            Text('Hola! yo soy,',style: TextStyle(color: colorSecundario,fontWeight: FontWeight.bold,fontSize: 50.0),),
            SizedBox(height: 5.0,),
            Text('Sebastian Marriaga',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 85.0),),
            SizedBox(height: 5.0,), 
            Text('Soy Desarrollador Movil Jr',style: TextStyle(color: Colors.white54,fontWeight: FontWeight.bold,fontSize: 45.0),),
            SizedBox(height: 40.0,),
            Spacer(),
            Center(child: Text(str, style: TextStyle(fontSize: 30.0,color:Colors.white60))),
          ],
        ),
      ),
    );
  }
}