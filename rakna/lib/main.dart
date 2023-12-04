import 'package:flutter/material.dart';
import 'package:rakna/pages/signup_page.dart';

void main() {
  runApp(Rakna());
}

class Rakna extends StatelessWidget {
  const Rakna({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SginUp(),
      debugShowCheckedModeBanner: false,
      // routes: {
      //   'LoginPage': (context) => const LoginPage(),
      //   RegisterPage.id: (context) => RegisterPage(),
      // },
      // initialRoute: 'LoginPage',
    );
  }
}
