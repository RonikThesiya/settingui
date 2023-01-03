import 'package:flutter/foundation.dart';

class Homeprovider extends ChangeNotifier {
  bool switches1 = false;
  bool switches2 = true;
  bool switches3 = false;

  void swi1() {
    switches1 = !switches1;
    notifyListeners();
  }

  void swi2() {
    switches2 = !switches2;
    notifyListeners();
  }

  void swi3() {
    switches3 = !switches3;
    notifyListeners();
  }
}
