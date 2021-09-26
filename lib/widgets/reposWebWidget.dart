import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:portafolio_web_f/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class RepoWebWidget extends StatelessWidget {
  
  final String nombreRepo;
  final String rutaImage;
  final String descripcion;
  final String descricionSecundaria;
  final String linkRepo;
  final bool direccion;

  const RepoWebWidget({
    Key? key, 
    required this.nombreRepo, 
    required this.rutaImage, 
    required this.descripcion, 
    this.descricionSecundaria = 'Flutter Dart', 
    required this.linkRepo, 
    this.direccion =false
  });

  @override
  Widget build(BuildContext context) {
    var rect2 = Rect.fromLTWH(direccion ? 550 : 0, 0, 900, 700);
    var rect3 = Rect.fromLTWH(direccion ? 0 : 550, 100, 900, 700);
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 10),
      child: Container(
        //color: Colors.red,
        width: double.infinity,
        height: 650,
        child: Stack(
          children: [

            Positioned.fromRect(
              rect: rect2,
              child: _ImageRepo(rutaImage: rutaImage)
            ),
            Positioned.fromRect(
              rect: rect3,
              child: _InfoRepo(
                nombreRepo: this.nombreRepo, 
                descripcion: this.descripcion, 
                descricionSecundaria: this.descricionSecundaria, 
                linkRepo: this.linkRepo, 
                direccion: this.direccion,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRepo extends StatelessWidget {
  const _InfoRepo({
    required this.nombreRepo,
    required this.descripcion,
    required this.descricionSecundaria,
    required this.linkRepo, 
    required this.direccion,
  });

  final String nombreRepo;
  final String descripcion;
  final String descricionSecundaria;
  final String linkRepo;
  final bool direccion;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: direccion ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      mainAxisAlignment: direccion ? MainAxisAlignment.start : MainAxisAlignment.start,
      children: [
        Text(this.nombreRepo, style: styletitleRepoWeb),
        SizedBox(height: 20),
        //_ImageRepo(rutaImage: rutaImage),
        SizedBox(height: 30),
        Container(
          height: 100,
          width: 600,
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
              child: Text(this.descripcion, style: TextStyle(color: Colors.white70, fontSize: 20), textAlign: TextAlign.justify,),
            )
          ),  
        ),
        SizedBox(height: 45),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            Text(this.descricionSecundaria, style: TextStyle(color: Colors.white70, fontSize: 23)),
            SizedBox(height: 30),
            Container(
              width: 100,
              height: 100,
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

class _ImageRepo extends StatelessWidget {
  const _ImageRepo({
    Key? key,
    required this.rutaImage,
  }) : super(key: key);

  final String rutaImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      width: double.infinity,
      height: double.infinity,
      child: FadeInImage(
        image: NetworkImage(this.rutaImage),
        placeholder: AssetImage('assets/images/sinimagen.gif'),
        fit: BoxFit.fill,
        height: 700,
        width: 900,
      ),          
    );
  }
}