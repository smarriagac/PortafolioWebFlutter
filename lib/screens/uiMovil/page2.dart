
import 'package:flutter/material.dart';
import 'package:portafolio_web_f/utils/utils.dart';
import 'package:portafolio_web_f/widgets/radialProgresWidget.dart';

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
      height: 900,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Sobre Mi', style: styletitle),
          SizedBox(height: 30),
          _ImagenPerfil(),
          SizedBox(height: 30),
          Text(descipcionPerfil,style: TextStyle(fontSize: 16, color: Colors.white70), textAlign: TextAlign.center),
          SizedBox(height: 30),
          Text('Habilidades', style: styletitle),
          SizedBox(height: 20),
          Wrap(
            runSpacing: 20,
            spacing: 20,
            children: skillsList.map((data) => _Skills(
              rutaImage: data.imagen, 
              texto: data.widget,
              porcentaje: data.porcentaje,
              )
            ).toList()
          )
          /* Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              itemExtent: 80,
              scrollDirection: Axis.horizontal,
              itemCount: skillsList.length,
              itemBuilder: (_, i) => _Skills(rutaImage: skillsList[i].imagen, texto: skillsList[i].widget),
            ),
          ) */
        ],
      ),
    );
  }
}

class _Skills extends StatelessWidget {
  
  final AssetImage rutaImage;
  final Widget texto;
  final double porcentaje;

  const _Skills({
    required this.porcentaje,
    required this.rutaImage, 
    required this.texto
    
  });
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(100),
                  shape: BoxShape.circle,
                  image: DecorationImage(image: this.rutaImage, fit: BoxFit.cover)
                ),
              ),
            ),
            Container(
              width: 100, 
              height: 100, 
              child: RadialProgress(
              porcentaje: this.porcentaje, 
              colorPrimario: colorSecundario1, 
              grosorSecundario: 4,
              grosorPrimario: 8
              )
            )
          ],
        ),
        SizedBox(height: 5),
        this.texto,
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