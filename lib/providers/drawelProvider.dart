
import 'package:flutter/material.dart';
class DrawelProviders extends ChangeNotifier {

  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldkey => this._scaffoldkey;

  set scaffoldkey(scaffoldkey) {
    this._scaffoldkey = scaffoldkey;
    notifyListeners();
  }

  late Widget _widget;

  Widget get widget => this._widget;

  set widget(Widget widget) {
    this._widget = widget;
    notifyListeners();
  }


}


