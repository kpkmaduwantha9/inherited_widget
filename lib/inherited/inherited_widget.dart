import 'package:flutter/cupertino.dart';

class MyInheritedWidget extends InheritedWidget {
  final String userName;

  MyInheritedWidget({
    super.key,
    required super.child,
    required this.userName,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static MyInheritedWidget of(BuildContext contect) {
    return contect.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!;
  }
}
