import 'package:deliveryApp/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:deliveryApp/login_page.dart';

void main() {
  MaterialApp(home: MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return HomePage();
              } else {
                return LoginPage();
              }
            }),
      );
}
