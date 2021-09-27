import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:portafolio_web_f/widgets/reposWebWidget.dart';
import 'package:portafolio_web_f/models/skillsModels.dart';
import 'package:portafolio_web_f/widgets/reposWidget.dart';

final backgraundColor = Color(0xff0A192F);
final colorSecundario = Color(0xff48E1EC);

final String descipcionPerfil = 'Yo soy Ingeniero Electrónico de profesión amante de la programación y al desarrollo de alto impacto. Aficionado al desarrollo de app y con la meta de automatizar procesos tradicionales atravez de la tecnologia e innovación.';
final String descripcionContacto = 'Cada dia sigo practicando y aprendiendo sobre flutter y otras tecnologias, soy un ingeniero entusiasta, competitivo y responsable.';
final String descripcionRedes = 'Si tiene alguna duda no dude en contactar...';


final colorPrincipal = Color(0xFF222831);
final colorSecundario1 = Color(0xFF393E46);
final colorSecundario2 = Color(0xFF00ADB5);
final colorSecundario3 = Color(0xFFEEEEEE);

// stilo texto drawel
final styleDrawel = TextStyle(fontSize: 20, color: Colors.white54);

final stylecontacto = TextStyle(fontSize: 20, color: colorSecundario, fontStyle: FontStyle.italic);

final styletitle = TextStyle(fontSize: 35, color: colorSecundario, fontWeight: FontWeight.bold);
final styleSkills = TextStyle(fontSize: 15, color: Colors.white54);

//  nombre Repo
final styletitleRepo = TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold);

// Lista de Habilidades
List<SkillsModel> skillsList = [

  SkillsModel(widget: Text('Flutter 71 %', style: styleSkills), imagen: AssetImage('assets/images/flutter.jpg'), porcentaje: 68),
  SkillsModel(widget: Text('Python 65 %', style: styleSkills),   imagen:  AssetImage('assets/images/python.png'), porcentaje: 65),
  SkillsModel(widget: Text('HTML 68 %', style: styleSkills),   imagen:  AssetImage('assets/images/html.png'), porcentaje: 68),
  SkillsModel(widget: Text('CSS 69 %', style: styleSkills),   imagen:  AssetImage('assets/images/css.png'), porcentaje: 69),
  SkillsModel(widget: Text('Arduino 73 %', style: styleSkills), imagen: AssetImage('assets/images/arduino.png'), porcentaje: 73),
  SkillsModel(widget: Text('Git 82 %', style: styleSkills),   imagen:  AssetImage('assets/images/git.png'), porcentaje: 82),

];

// Lista de Repositorios
final List<Widget> repos = [
    RepoWidget(
      descripcion: 'Contiene las noticias de los principales medios de comunicación de colombia.',
      nombreRepo: ' Noticias App',
      linkRepo: 'https://github.com/smarriagac/Aplicacion_Noticias',
      rutaImage: 'https://i.postimg.cc/rmGrq4Tz/Noticias.png',
    ),
    SizedBox(height: 50),
    RepoWidget(
      descripcion: 'Genera una lista de las peliculas en carteleras y las mas populares.',
      nombreRepo: ' Movie App',
      linkRepo: 'https://github.com/smarriagac/Aplicacion_Peliculas',
      rutaImage: 'https://i.postimg.cc/9MH93pvv/Group-1.png',
    ),
    SizedBox(height: 50),
    RepoWidget(
      descripcion: 'Gestion de inventarion de una empresa de pan por medio de codigos r.',
      nombreRepo: ' Inventario app',
      linkRepo: 'https://github.com/smarriagac/inventory_app',
      rutaImage: 'https://i.postimg.cc/PJh1D4ym/Group-1.png',
    ),
  ];

  List<Widget> listaRedes = [

    IconButton(
      onPressed: () async { await launch('https://www.linkedin.com/in/smarriagac');}, 
      icon: FaIcon(FontAwesomeIcons.linkedinIn, size: 50, color: colorSecundario1,) 
    ),

    IconButton(
      onPressed: () async { await launch('https://github.com/smarriagac');}, 
      icon: FaIcon(FontAwesomeIcons.github, size: 50, color: colorSecundario1,) 
    ),

    IconButton(
      onPressed: () async { await launch('https://twitter.com/Smarriagac');}, 
      icon: FaIcon(FontAwesomeIcons.twitter, size: 50, color: colorSecundario1,) 
    ),
    
  ];


  // ========================================== web ============================================= //

final styletitleweb = TextStyle(fontSize: 55, color: colorSecundario, fontWeight: FontWeight.bold);
final styletitleRepoWeb = TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold);
final styleContactoWeb = TextStyle(fontSize: 30, color: Colors.white54);

final styleContanto2Web= TextStyle(fontSize: 30, color: colorSecundario, fontStyle: FontStyle.italic);



final List<Widget> reposWeb = [
    RepoWebWidget(
      descripcion: 'Contiene las noticias de los principales medios de comunicación de colombia.',
      nombreRepo: ' Noticias App',
      linkRepo: 'https://github.com/smarriagac/Aplicacion_Noticias',
      rutaImage: 'https://i.postimg.cc/rmGrq4Tz/Noticias.png',
      direccion: true,
    ),
    SizedBox(height: 150),
    RepoWebWidget(
      descripcion: 'Genera una lista de las peliculas en carteleras y las mas populares.',
      nombreRepo: ' Movie App',
      linkRepo: 'https://github.com/smarriagac/Aplicacion_Peliculas',
      rutaImage: 'https://i.postimg.cc/9MH93pvv/Group-1.png',
      direccion: false,
    ),
    SizedBox(height: 150),
    RepoWebWidget(
      descripcion: 'Gestion de inventarion de una empresa de pan por medio de codigos r.',
      nombreRepo: ' Inventario app',
      linkRepo: 'https://github.com/smarriagac/inventory_app',
      rutaImage: 'https://i.postimg.cc/PJh1D4ym/Group-1.png',
      direccion: true,
    ),
  ];


/* Container(
              width: 200,
              height: 50,
              child: MaterialButton(
                color: backgraundColor,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    side: BorderSide(color: colorSecundario)
                  ),
                child:Text("Tocame",style:TextStyle(color: colorSecundario,fontWeight: FontWeight.bold,fontSize: 15.0),),
              ),
            ), */