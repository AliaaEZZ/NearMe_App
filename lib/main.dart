import 'package:flutter/material.dart';
import 'package:nearme_app/Features/Register/Screens/Sign_Up.dart';
import 'package:nearme_app/Features/Register/Screens/Start_Page.dart';

void main() {
  runApp(nearme_app());
}

class nearme_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: StartPage());
  }
}