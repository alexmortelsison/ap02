import 'package:ap02/pages/home_page.dart';
import 'package:ap02/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomePage();
          } else {
            return const LogInPage();
          }
        },
        stream: FirebaseAuth.instance.authStateChanges(),
      ),
    );
  }
}
