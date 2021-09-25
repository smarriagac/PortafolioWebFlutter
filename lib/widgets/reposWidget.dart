import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:portafolio_web_f/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class RepoWidget extends StatelessWidget {
  
  final String nombreRepo;
  final String rutaImage;
  final String descripcion;
  final String descricionSecundaria;
  final String linkRepo;

  const RepoWidget({
    Key? key, 
    required this.nombreRepo, 
    required this.rutaImage, 
    required this.descripcion, 
    this.descricionSecundaria = 'Flutter Dart', 
    required this.linkRepo
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(this.nombreRepo, style: styletitleRepo),
        SizedBox(height: 20),
        Container(
          height: 250,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),            
          ),
          child: FadeInImage(
            image: NetworkImage(this.rutaImage),
            placeholder: AssetImage('assets/images/sinimagen.gif'),
            fit: BoxFit.cover,
          ),          
        ),
        SizedBox(height: 30),
        Container(
          height: 150,
          width: 350,
          decoration: BoxDecoration(
            color: Color(0xff172943),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: colorSecundario1,
                blurRadius: 5.0,
                offset: Offset(3,5)
              )
            ]
          ),         
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(this.descripcion, style: TextStyle(color: Colors.white70, fontSize: 18), textAlign: TextAlign.justify,),
            )
          ),  
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text(this.descricionSecundaria, style: TextStyle(color: Colors.white70, fontSize: 16)),
            SizedBox(width: 10),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white70,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(offset: Offset(5,2), color: colorSecundario1)
                ]
              ),
              child: IconButton(
                onPressed: () async {
                  await launch(this.linkRepo);
                }, 
                icon: Center(child: FaIcon(FontAwesomeIcons.github, size: 45, color: Colors.teal,))
              ),
            ),
          ],
        )
      ],
    );
  }
}