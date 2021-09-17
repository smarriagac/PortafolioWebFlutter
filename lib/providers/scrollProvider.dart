import 'package:flutter/material.dart';


class ScrollProviderController extends ChangeNotifier {
  
  ScrollController _controler = ScrollController();

  ScrollController get controler => this._controler;

  set controler(ScrollController controler) {
    this._controler = controler;
    notifyListeners();
  }

  


}

