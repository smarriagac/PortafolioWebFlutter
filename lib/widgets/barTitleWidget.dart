import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:portafolio_web_f/providers/drawelProvider.dart';
import 'package:portafolio_web_f/providers/scrollProviderWeb.dart';
import 'package:portafolio_web_f/utils/responsivo.dart';
import 'package:portafolio_web_f/utils/utils.dart';

class BarTitleWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    final TextStyle textStyle = TextStyle(fontSize: ResponsiveLayout.isMediumScreen(context)? 20 : 25 , color: Colors.white);

    return Container(
      constraints: BoxConstraints(
        maxHeight: size.height * 0.15,
        minHeight: size.height * 0.12,        
      ),
      width: double.infinity,
      //color: Colors.red,
      child: ResponsiveLayout.isSmallScreen(context) 
              ? _ItemBarCompress()
              : _ItemsBar(textStyle: textStyle),

    );
  }
}

class _ItemBarCompress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final key = Provider.of<DrawelProviders>(context);

    return Container(
      //color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Spacer(),
          IconButton(
            color: colorSecundario,
            icon: Icon(Icons.view_list_outlined, size: 35,),
            onPressed: () => key.scaffoldkey.currentState?.openEndDrawer()
          ),
          SizedBox(width: 30,)
        ],
      ),
    );
  }

}

class _ItemsBar extends StatelessWidget {
  const _ItemsBar({
    Key? key,
    required this.textStyle,
  }) : super(key: key);
  

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {

    final scrollLisviwe = Provider.of<ScrollProviderControllerWeb>(context, listen: false);

    return Padding(
      padding: ResponsiveLayout.isMediumScreen(context)
                ? EdgeInsets.symmetric(vertical: 25)
                : EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Spacer(),
          TextButton(child: Text('Inicio', style: textStyle), onPressed: () => 
          _movetopixel(scrollLisviwe.controlerweb, scrollLisviwe, 0),
          ),
          _widthTilte(85, context),
          TextButton(child: Text('Acerca de mi', style: textStyle), onPressed: ()=> 
          _movetopixel(scrollLisviwe.controlerweb, scrollLisviwe, 900)),
          _widthTilte(85, context),
          TextButton(child: Text('Portafolio', style: textStyle), onPressed: ()=>
          _movetopixel(scrollLisviwe.controlerweb, scrollLisviwe, 1850)),
          _widthTilte(85, context),
          TextButton(child: Text('Contacto', style: textStyle), onPressed: ()=>
          _movetopixel(scrollLisviwe.controlerweb, scrollLisviwe, 4450)),
          _widthTilte(85, context),
          
        ],
      ),
    );
    
  }

  Future<void> _movetopixel(ScrollController controller, ScrollProviderControllerWeb controllerScroll, int i) async {
    return await controllerScroll.controlerweb.animateTo(
      controller.offset + i , 
      duration: Duration(milliseconds: 800), 
      curve: Curves.linearToEaseOut
    );
  }

  Widget _widthTilte( double space, BuildContext context ) => SizedBox(width: ResponsiveLayout.isMediumScreen(context) ? 55 :space);
}