import 'package:flutter/material.dart';
import 'package:rakna/pages/Privacy_policey_page.dart';
import 'package:rakna/pages/dashboard_page.dart';
import 'package:rakna/pages/password_confirmed_page.dart';
import 'package:rakna/pages/signup_page.dart';

void main() {
  runApp(const Rakna());
}

class Rakna extends StatelessWidget {
  const Rakna({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        PrivacyPoliceyPage.id: (context) => const PrivacyPoliceyPage(),
        SginUp.id: (context) => SginUp(),
        PasswordConfirmedPage.id: (context) => const PasswordConfirmedPage(),
        // DashBordPage.id: (context) => DashBordPage(),
      },
      initialRoute: SginUp.id,
    );
  }
}
