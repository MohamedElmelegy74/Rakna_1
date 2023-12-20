import 'package:flutter/material.dart';
import 'package:rakna/pages/Privacy_policey_page.dart';
import 'package:rakna/pages/change_password.dart';
import 'package:rakna/pages/dashboard_page.dart';
import 'package:rakna/pages/forgot_password.dart';
import 'package:rakna/pages/login_page.dart';
import 'package:rakna/pages/otp_page.dart';
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
        SginUp.id: (context) => const SginUp(),
        PasswordConfirmedPage.id: (context) => const PasswordConfirmedPage(),
        LoginPage.id: (context) => const LoginPage(),
        ChangePassword.id: (context) => const ChangePassword(),
        ForgotPassword.id: (context) => const ForgotPassword(),
        LoginPage.id: (context) => const LoginPage(),
        OtpPage.id: (context) => const OtpPage(),
        PasswordConfirmedPage.id: (context) => const PasswordConfirmedPage(),
      },
      initialRoute: LoginPage.id,
    );
  }
}
