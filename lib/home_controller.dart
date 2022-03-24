import 'package:flutter/cupertino.dart';

class HomeController extends InheritedWidget {
  HomeController({Key? key, required Widget child})
      : super(key: key, child: child);
  int value = 1;
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return false;
  }
}
