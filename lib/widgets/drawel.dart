import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:portafolio_web_f/providers/scrollProvider.dart';
import 'package:portafolio_web_f/utils/utils.dart';

class DrawelMovil extends StatelessWidget {
  const DrawelMovil({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controllerScroll = Provider.of<ScrollProviderController>(context, listen: false);
    final _controller = controllerScroll.controler;
    return Drawer(
      child: Container(
        width: 800,
        color: backgraundColor,
        child: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: 80),
            TextButton(child: Text('Inicio', style: styleDrawel,), onPressed: () {
              _movetopixel(_controller,controllerScroll, 0);
              Navigator.pop(context);
            }),
            Divider(height: 10),
            TextButton(child: Text('Sobre mi', style: styleDrawel,), onPressed: (){
              _movetopixel(_controller,controllerScroll, 710);
              Navigator.pop(context);
            }),
            Divider(height: 10),
            TextButton(child: Text('Portafolio', style: styleDrawel,), onPressed: (){
              _movetopixel(_controller,controllerScroll, 1710);
              Navigator.pop(context);
            }),
            Divider(height: 10),
            TextButton(child: Text('Contacto', style: styleDrawel), onPressed: (){
              _movetopixel(_controller,controllerScroll, 3710);
              Navigator.pop(context);
            }),
          ],
          
        ),
      )
    );
  }

  Future<void> _movetopixel(ScrollController controller, ScrollProviderController controllerScroll, int i) async {
    return await controllerScroll.controler.animateTo(
      controller.offset + i , 
      duration: Duration(milliseconds: 800), 
      curve: Curves.linearToEaseOut
    );
  }
}