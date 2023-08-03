import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

// extends DiagnosticableTreeMixin 
class CounterProvider extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
