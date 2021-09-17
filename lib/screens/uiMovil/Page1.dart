import 'package:flutter/material.dart';
import 'package:portafolio_web_f/utils/utils.dart';

class Page1Movil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    String str="Ingeniero Electrónico entusiasta por conocer nuevas tecnologías.";

    return Container(
      padding: EdgeInsets.fromLTRB(size.width * 0.125, 250.0, 30.0, 20.0),
      //color: Colors.red,
      constraints: BoxConstraints(
        maxWidth: double.infinity
      ),
      height: size.height - 65,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          //SizedBox(height: 15.0,),         
          Text('Hola! yo soy,',style: TextStyle(color: colorSecundario,fontWeight: FontWeight.bold,fontSize: 20.0),),
          SizedBox(height: 5.0,),
          Text('Sebastian Marriaga',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35.0),),
          SizedBox(height: 5.0,), 
          Text('Soy Desarrollador Flutter Jr',style: TextStyle(color: Colors.white54,fontWeight: FontWeight.bold,fontSize: 24.0),),
          SizedBox(height: 40.0,),
          Spacer(),
          Text(str, style: TextStyle(fontSize: 20.0,color:Colors.white60)),
        ],
      ),
    );
  }
}