import 'package:flutter/material.dart';

class DrawelMovil extends StatelessWidget {
  const DrawelMovil({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    
    return Drawer(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(height: 10),
          TextButton(child: Text('Inicio'), onPressed: (){}),
          Divider(height: 10),
          TextButton(child: Text('Acerca de mi'), onPressed: (){}),
          Divider(height: 10),
          TextButton(child: Text('Portafolio'), onPressed: (){}),
          Divider(height: 10),
          TextButton(child: Text('Contacto'), onPressed: (){}),
        ],
      )
    
    );
  }
}