import 'package:flutter/material.dart';
import 'package:portafolio_web_f/utils/responsivo.dart';

class BarTitleWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    final TextStyle textStyle = TextStyle(fontSize: ResponsiveLayout.isMediumScreen(context)? 20 : 25 , color: Colors.white);

    return Container(
      constraints: BoxConstraints(
        maxHeight: size.height * 0.11,
        minHeight: size.height * 0.08,        
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
    return Container(
      //color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Spacer(),
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.view_list_outlined, size: 35,),
            onPressed: _listaItems
          ),
          SizedBox(width: 30,)
        ],
      ),
    );
  }

  Widget _listaItems() {
    return Flexible(
              fit: FlexFit.tight,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  TextButton(child: Text('Inicio',), onPressed: (){}),
                  TextButton(child: Text('Inicio'), onPressed: (){}),
                  TextButton(child: Text('Inicio'), onPressed: (){}),
                  
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
    return Padding(
      padding: ResponsiveLayout.isMediumScreen(context)
                ? EdgeInsets.symmetric(vertical: 25)
                : EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Spacer(),
          TextButton(child: Text('Inicio', style: textStyle), onPressed: (){}),
          _widthTilte(85, context),
          TextButton(child: Text('Acerca de mi', style: textStyle), onPressed: (){}),
          _widthTilte(85, context),
          TextButton(child: Text('Portafolio', style: textStyle), onPressed: (){}),
          _widthTilte(85, context),
          TextButton(child: Text('Contacto', style: textStyle), onPressed: (){}),
          _widthTilte(85, context),
          
        ],
      ),
    );
  }

  Widget _widthTilte( double space, BuildContext context ) => SizedBox(width: ResponsiveLayout.isMediumScreen(context) ? 55 :space);
}