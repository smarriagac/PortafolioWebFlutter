import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portafolio_web_f/models/skillsModels.dart';
import 'package:portafolio_web_f/widgets/reposWidget.dart';
import 'package:url_launcher/url_launcher.dart';

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