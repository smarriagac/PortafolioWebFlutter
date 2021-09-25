import 'package:flutter/material.dart';
import 'package:portafolio_web_f/utils/utils.dart';
import 'package:portafolio_web_f/widgets/radialProgresWidget.dart';

class Skills extends StatelessWidget {
  
  final AssetImage rutaImage;
  final Widget texto;
  final double porcentaje;

  const Skills({
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
