import 'dart:math';

import 'package:flutter/material.dart';
class RadialProgress extends StatelessWidget {

  final porcentaje;
  final Color colorPrimario;
  final Color colorSecundario;
  final double grosorPrimario;
  final double grosorSecundario;

  const RadialProgress({ 
    required this.porcentaje, 
    this.colorPrimario = Colors.blue, 
    this.colorSecundario = Colors.grey, 
    this.grosorSecundario = 5.0,
    this.grosorPrimario = 10.0
  });

  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
        painter: _MiRadialProgress(
          this.porcentaje,
          this.colorPrimario,
          this.colorSecundario,
          this.grosorSecundario,
          this.grosorPrimario
          ),
        ),
    );
  }
}

class _MiRadialProgress extends CustomPainter {

  final porcentaje;
  final Color colorPrimario;
  final Color colorSecundario;
  final double grosorSecundario;
  final double grosorPrimario;


  _MiRadialProgress(
    this.porcentaje, 
    this.colorPrimario,
    this.colorSecundario,
    this.grosorSecundario,
    this.grosorPrimario
  );

  @override
  void paint(Canvas canvas, Size size) {

    // circulo completado
    final paint = new Paint()
        ..strokeWidth = this.grosorSecundario
        ..color       = this.colorSecundario
        ..style       = PaintingStyle.stroke;

    Offset center = new Offset(size.width * 0.5 , size.height/2);
    double radio = min(size.width * 0.5 , size.height/2);

    canvas.drawCircle(center, radio, paint);

    // arco
    final paintArco = new Paint()
        ..strokeWidth = this.grosorPrimario
        ..color       = this.colorPrimario
        //..shader      = gradiente.createShader(rect)
        ..strokeCap   = StrokeCap.round
        ..style       = PaintingStyle.stroke;

    // parte que se debera ir llenando

    double arcAngle = 2 * pi * (porcentaje/100);

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radio), 
      -pi/2, 
      arcAngle, 
      false, 
      paintArco);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}