import 'package:flutter/material.dart';
import 'package:inherited_widget/inherited/inherited_widget.dart';
import 'package:inherited_widget/pages/home_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      userName: "kp test 2",
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
