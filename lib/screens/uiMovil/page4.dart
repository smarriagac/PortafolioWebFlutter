import 'package:flutter/material.dart';
import 'package:portafolio_web_f/providers/scrollProvider.dart';
import 'package:portafolio_web_f/utils/utils.dart';
import 'package:provider/provider.dart';

class Page4Movil extends StatelessWidget {
  const Page4Movil({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final returnInicio = Provider.of<ScrollProviderController>(context, listen: false);

    var textStyle = TextStyle(color: Colors.white, fontSize: 18);
    return Container(
      padding: EdgeInsets.fromLTRB(30, 10, 15, 30),
      width: 500,
      height: MediaQuery.of(context).size.height * 0.9,
      child: Column(
        children: [
          Text('Contacto', style: styletitle),
          SizedBox(height: 50),
          Text(descripcionContacto, style: styleDrawel, textAlign: TextAlign.justify,),
          SizedBox(height: 20),
          Text(descripcionRedes, style: stylecontacto),
          SizedBox(height: 50),
          Row(
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  returnInicio.controler.animateTo(
                    returnInicio.controler.initialScrollOffset, 
                    duration: Duration(milliseconds: 800), 
                    curve: Curves.linearToEaseOut
                  );
                },
                icon: Icon(Icons.arrow_circle_up_outlined, size: 50),
              )
            ],
          )
        ],
      ),
    );
  }
}