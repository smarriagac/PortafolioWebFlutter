import 'package:flutter/material.dart';


class ScrollProviderControllerWeb extends ChangeNotifier {
  
  ScrollController _controlerweb = ScrollController();

  ScrollController get controlerweb => this._controlerweb;

  set controlerweb(ScrollController controlerweb) {
    this._controlerweb = controlerweb;
    notifyListeners();
  }

  
}

