import 'package:flutter/material.dart';
import 'package:nearme_app/Features/Register/Forgot_password/Screens/change_password.dart';
import 'package:nearme_app/Features/Register/Forgot_password/Screens/change_password2.dart';
import 'package:nearme_app/Features/Register/Splash_page/Screens/splash_page.dart'; // Use only one import path

void main() {
  runApp(const NearMeApp());
}

class NearMeApp extends StatelessWidget {
  const NearMeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangePassword2(),
    );
  }
}
