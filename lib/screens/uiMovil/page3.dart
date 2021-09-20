import 'package:flutter/material.dart';
import 'package:portafolio_web_f/utils/utils.dart';
import 'package:portafolio_web_f/widgets/reposWidget.dart';

class Page3Movil extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 500,
      height: 1900,
      child: Column(
        children: [
          Text('Repositorios', style: styletitle),
          SizedBox(height: 40),
          Column(
            children: repos.map((e) => e).toList(),
          )
        ],
      ),
    );
  }

  final List<Widget> repos = [
    RepoWidget(
      descripcion: 'Proyecto que tiene como funcion tal y ta;',
      nombreRepo: ' QR app',
      linkRepo: 'ithubtal',
      rutaImage: 'assets/images/flutter.jpg',
    ),
    SizedBox(height: 50),
    RepoWidget(
      descripcion: 'Proyecto que tiene como funcion tal y ta;',
      nombreRepo: ' QR app',
      linkRepo: 'ithubtal',
      rutaImage: 'assets/images/flutter.jpg',
    ),
    SizedBox(height: 50),
    RepoWidget(
      descripcion: 'Proyecto que tiene como funcion tal y ta;',
      nombreRepo: ' QR app',
      linkRepo: 'ithubtal',
      rutaImage: 'assets/images/flutter.jpg',
    ),
  ];
}

