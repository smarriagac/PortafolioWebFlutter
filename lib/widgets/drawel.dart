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
            SizedBox(height: 50),
            TextButton(child: Text('Inicio'), onPressed: () {
              _movetopixel(_controller,controllerScroll, 0);
              Navigator.pop(context);
            }),
            Divider(height: 10),
            TextButton(child: Text('Acerca de mi'), onPressed: (){
              _movetopixel(_controller,controllerScroll, 850);
              Navigator.pop(context);
            }),
            Divider(height: 10),
            TextButton(child: Text('Portafolio'), onPressed: (){
              _movetopixel(_controller,controllerScroll, 500 * 2);
              Navigator.pop(context);
            }),
            Divider(height: 10),
            TextButton(child: Text('Contacto'), onPressed: (){
              _movetopixel(_controller,controllerScroll, 500 * 3);
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