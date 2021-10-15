import 'package:flutter/material.dart';
import 'package:portafolio_web_f/utils/utils.dart';

class Page1Movil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    String str="Ingeniero Electrónico entusiasta por conocer nuevas tecnologías.";

    return Container(
      padding: EdgeInsets.fromLTRB(size.width * 0.125, 150.0, 30.0, 20.0),
      //color: Colors.red,
      constraints: BoxConstraints(
        maxWidth: 500,
      ),
      height: size.height * 0.9,
      child: Column(
        children:[
          //SizedBox(height: 15.0,),         
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hola! yo soy,',style: TextStyle(color: colorSecundario,fontWeight: FontWeight.bold,fontSize: 20.0),),
                SizedBox(height: 5.0,),
                FittedBox(
                  fit: BoxFit.cover,
                  child: Text('Sebastian Marriaga',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35.0),)),
                SizedBox(height: 5.0,), 
                FittedBox(
                  fit: BoxFit.cover,
                  child: Text('Soy Desarrollador Movil Jr',style: TextStyle(color: Colors.white54,fontWeight: FontWeight.bold,fontSize: 24.0),)),
              ],
            ),
          ),
          Spacer(),
          Text(str, style: TextStyle(fontSize: 20.0,color:Colors.white60)),
        ],
      ),
    );
  }
}