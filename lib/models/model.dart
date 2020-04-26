
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ModelChange with ChangeNotifier{
  bool _binaryDecimal = true;
  String _binary = "";
  String _decimal =""; 

  bool get binaryDecimal => _binaryDecimal;
  String get binary => _binary;
  String get decimal => _decimal;
  
  void onPressed(int k, bool sw) {
    switch (sw) {
      case true: 
          _binary = _binary + k.toString();
          _decimal = int.parse(_binary, radix: 2).toRadixString(10); 
          notifyListeners();
        break;
      case false:
          _decimal = _decimal + k.toString();
          _binary = int.parse(_decimal, radix: 10).toRadixString(2);      
          notifyListeners();
        break;
    }
  }

  void changeFrame(){
    _binaryDecimal = !_binaryDecimal;
    notifyListeners();
  }

  void clear(){
      _binary = "";
      _decimal = "";
      notifyListeners();
  }
}

