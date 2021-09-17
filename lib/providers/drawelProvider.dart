
import 'package:flutter/material.dart';
class DrawelProviders extends ChangeNotifier {

  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldkey => this._scaffoldkey;

  set scaffoldkey(scaffoldkey) {
    this._scaffoldkey = scaffoldkey;
    notifyListeners();
  }

}


