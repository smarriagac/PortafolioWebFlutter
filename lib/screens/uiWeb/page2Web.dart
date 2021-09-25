
import 'package:flutter/material.dart';
import 'package:portafolio_web_f/utils/responsivo.dart';

import 'package:portafolio_web_f/utils/utils.dart';
import 'package:portafolio_web_f/widgets/skillWidgets.dart';

class Page2Web  extends StatelessWidget {
  const Page2Web ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Container(
      padding: EdgeInsets.fromLTRB(30, 25, 30, 20),
      //color: Colors.green,
      constraints: BoxConstraints(
        maxWidth: double.infinity
      ),
      height: ResponsiveLayout.isMediumScreen(context) ? 750 : 600,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: _Fila1(),
            width: ResponsiveLayout.isMediumScreen(context)? 400 : ResponsiveLayout.isLargeScreen(context) ? 800 : 300,
          ),
          _ImagenPerfil(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _Fila1 extends StatelessWidget {
  const _Fila1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sobre mi', style: styletitleweb),
        SizedBox(height: 30),
        Text(descipcionPerfil,style: TextStyle(fontSize: 25, color: Colors.white70), textAlign: TextAlign.left) ,
        SizedBox(height: 50),
        Text('Habilidades', style: styletitleweb),
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
    );
  }
}


class _ImagenPerfil extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    var height2 = ResponsiveLayout.isMediumScreen(context) ? 300 : 500;
    var height3 = ResponsiveLayout.isMediumScreen(context) ? 290 : 490;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: height2.toDouble() ,
          width: height2.toDouble() ,
          decoration: BoxDecoration(
            color: colorSecundario,
            shape: BoxShape.circle
          ),
        ),

        Container(
          height: height3.toDouble() ,
          width: height3.toDouble() ,
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