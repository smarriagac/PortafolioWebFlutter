import 'package:flutter/material.dart';
import 'package:portafolio_web_f/utils/utils.dart';

class Page2Movil  extends StatelessWidget {
  const Page2Movil ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 5, 30, 20),
      //color: Colors.green,
      constraints: BoxConstraints(
        maxWidth: 500
      ),
      height: 700,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text('Sobre Mi', style: styletitle),
          SizedBox(height: 30),
          _ImagenPerfil(),
          SizedBox(height: 30),
          Text(descipcionPerfil,style: TextStyle(fontSize: 16, color: Colors.white70), textAlign: TextAlign.center),
          SizedBox(height: 30),
          Text('Habilidades', style: styletitle),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _Skills(rutaImage: skillsList[0].imagen, texto: skillsList[0].widget),
              _Skills(rutaImage: skillsList[1].imagen, texto: skillsList[1].widget),
              _Skills(rutaImage: skillsList[2].imagen, texto: skillsList[2].widget),
              _Skills(rutaImage: skillsList[3].imagen, texto: skillsList[3].widget),
              
            ],
          )
        ],
      ),
    );
  }
}

class _Skills extends StatelessWidget {
  
  final AssetImage rutaImage;
  final Widget texto;

  const _Skills({
    required this.rutaImage, 
    required this.texto
  });
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            //color: Colors.red,
            shape: BoxShape.circle,
            image: DecorationImage(image: this.rutaImage, fit: BoxFit.cover)
          ),
        ),
        SizedBox(height: 5),
        this.texto
      ],
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
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            color: colorSecundario,
            shape: BoxShape.circle
          ),
        ),

        Container(
          height: 240,
          width: 240,
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