import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class GenderProvide with ChangeNotifier {
  bool _isMale = true;

  bool get isMale => _isMale;

  set isMale(bool newValue) {
    _isMale = newValue;
    notifyListeners();
  }

  get color => _isMale == true ? Colors.blue : Colors.pink;
  get borderMale => _isMale == true ? Colors.blue : Colors.grey;
  get borderFemale => _isMale == false ? Colors.pink : Colors.grey;
}
