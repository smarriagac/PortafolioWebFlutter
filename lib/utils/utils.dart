import 'package:flutter/material.dart';
import 'package:portafolio_web_f/models/skillsModels.dart';

final backgraundColor = Color(0xff0A192F);
final colorSecundario = Color(0xff48E1EC);

final String descipcionPerfil = 'Yo soy Ingeniero Electrónico de profesión amante de la programación y al desarrollo de alto impacto. Aficionado al desarrollo de app y con la meta de automatizar procesos tradicionales atravez de la tecnologia e innovación.';

final colorPrincipal = Color(0xFF222831);
final colorSecundario1 = Color(0xFF393E46);
final colorSecundario2 = Color(0xFF00ADB5);
final colorSecundario3 = Color(0xFFEEEEEE);

final styletitle = TextStyle(fontSize: 35, color: colorSecundario, fontWeight: FontWeight.bold);
final styleSkills = TextStyle(fontSize: 15, color: Colors.white54);

List<SkillsModel> skillsList = [

  SkillsModel(widget: Text('Flutter', style: styleSkills), imagen: AssetImage('assets/images/flutter.jpg'), porcentaje: 60),
  SkillsModel(widget: Text('Arduino', style: styleSkills), imagen: AssetImage('assets/images/arduino.png'), porcentaje: 73),
  SkillsModel(widget: Text('Python', style: styleSkills),   imagen:  AssetImage('assets/images/python.png'), porcentaje: 65),
  SkillsModel(widget: Text('Git', style: styleSkills),   imagen:  AssetImage('assets/images/git.png'), porcentaje: 82),

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