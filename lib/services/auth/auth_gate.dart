import 'package:amolchat/pages/home_page.dart';
import 'package:amolchat/services/auth/login_or_register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // userisloggedin
          if (snapshot.hasData) {
            return HomePage();
          }

          // userNOT loggdin
          else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
