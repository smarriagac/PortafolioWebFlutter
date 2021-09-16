import 'package:flutter/material.dart';
import 'package:portafolio_web_f/providers/drawelProvider.dart';
import 'package:portafolio_web_f/screens/homeScreen.dart';
import 'package:provider/provider.dart';

void main() => runApp(GestorState());

class GestorState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DrawelProviders(), lazy: false,)
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portafolio Web',
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}