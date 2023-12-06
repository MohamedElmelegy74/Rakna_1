import 'package:flutter/material.dart';
import 'package:rakna/pages/Privacy_policey_page.dart';
import 'package:rakna/pages/password_confirmed_page.dart';
import 'package:rakna/pages/signup_page.dart';

void main() {
  runApp(Rakna());
}

class Rakna extends StatelessWidget {
  const Rakna({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrivacyPoliceyPage(),
      // PasswordConfirmedPage(),

      // SginUp(),
      debugShowCheckedModeBanner: false,
      // routes: {
      //   'LoginPage': (context) => const LoginPage(),
      //   RegisterPage.id: (context) => RegisterPage(),
      // },
      // initialRoute: 'LoginPage',
    );
  }
}
