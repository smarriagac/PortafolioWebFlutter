import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:portafolio_web_f/providers/scrollProviderWeb.dart';
import 'package:portafolio_web_f/utils/utils.dart';

class Page4Web extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final returnInicio = Provider.of<ScrollProviderControllerWeb>(context, listen: false);

    var textStyle = TextStyle(color: Colors.white, fontSize: 25);
    return Container(
      padding: EdgeInsets.fromLTRB(50, 10, 50, 30),
      width: double.infinity,
      height: 700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contacto', style: styletitleweb),
          SizedBox(height: 50),
          Text(descripcionContacto, style: styleContactoWeb, textAlign: TextAlign.justify,),
          SizedBox(height: 20),
          Text(descripcionRedes, style: styleContanto2Web),
          SizedBox(height: 100),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: listaRedes.map((icon) => Container(
              child: icon,
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white70,
                boxShadow: [
                  BoxShadow(offset: Offset(5,1), color: colorSecundario)
                ]
              ),
              
              )
            ).toList(),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(' Portafolio realizado en flutter',
                  style: textStyle,
                  ),
                  Text(' By: smarriagac@gmail.com',
                  style: textStyle,
              ),
                ],
              ),

              IconButton(
                color: colorSecundario,
                iconSize: 50,
                //backgroundColor: colorSecundario,
                onPressed: (){
                  returnInicio.controlerweb.animateTo(
                    returnInicio.controlerweb.initialScrollOffset, 
                    duration: Duration(milliseconds: 800), 
                    curve: Curves.linearToEaseOut
                  );
                },
                icon: Icon(Icons.arrow_circle_up_outlined, size: 90),
              )
            ],
          )
        ],
      ),
    );
  }
}