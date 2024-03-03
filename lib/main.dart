import 'package:chatapp/Pages/registration_page/registration_page.dart';
import 'package:chatapp/Pages/singIn_page.dart/SignIn_Page.dart';
import 'package:chatapp/Pages/welcome/OnBoarding_Screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const OnBoardingScrren(),
      routes: {
        "/signInPage": (context) => const SignInPage(),
        "/registerPage": (context) => const RegisterPage(),
      },
    );
  }
}
