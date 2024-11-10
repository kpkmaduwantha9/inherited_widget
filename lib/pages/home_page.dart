import 'package:flutter/material.dart';
import 'package:inherited_widget/inherited/inherited_widget.dart';
import 'package:inherited_widget/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //* get the username from the inherited widget
    String userName = MyInheritedWidget.of(context).userName;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "User : $userName",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            },
            child: Text("Profile Page"),
          ),
        ],
      ),
    );
  }
}
