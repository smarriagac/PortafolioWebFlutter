
import 'package:flutter/material.dart';
import 'package:portafolio_web_f/utils/utils.dart';
import 'package:portafolio_web_f/widgets/skillWidgets.dart';

class Page2Movil  extends StatelessWidget {
  const Page2Movil ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Container(
      padding: EdgeInsets.fromLTRB(30, 5, 30, 10),
      //color: Colors.green,
      constraints: BoxConstraints(
        maxWidth: 500,
        maxHeight: 1200,
        minHeight: 1100,
      ),
      height: MediaQuery.of(context).size.height * 0.9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Sobre mi', style: styletitle),
          SizedBox(height: 30),
          _ImagenPerfil(),
          SizedBox(height: 30),
          Text(descipcionPerfil,style: TextStyle(fontSize: 16, color: Colors.white70), textAlign: TextAlign.center),
          SizedBox(height: 20),
          Text('Habilidades', style: styletitle),
          SizedBox(height: 20),
          Wrap(
            runSpacing: 20,
            spacing: 20,
            children: skillsList.map((data) => Skills(
              rutaImage: data.imagen, 
              texto: data.widget,
              porcentaje: data.porcentaje,
              )
            ).toList()
          )
        ],
      ),
    );
  }
}

class _ImagenPerfil extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: colorSecundario,
            shape: BoxShape.circle
          ),
        ),

        Container(
          height: 290,
          width: 290,
          decoration: BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage('assets/images/perfil.png'), fit: BoxFit.cover)
          ),
        ),
      ],
    );
  }
}