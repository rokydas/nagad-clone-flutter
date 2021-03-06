import 'package:flutter/material.dart';
import 'package:nagad_clone/screens/ContactScreen/ContactScreen.dart';
import 'package:nagad_clone/screens/EntryScreen/EntryScreen.dart';
import 'package:nagad_clone/screens/NotificationScreen/NotificationScreen.dart';
import 'package:nagad_clone/screens/PinScreen/PinScreen.dart';
import 'package:nagad_clone/screens/ProfileScreen/ProfileScreen.dart';
import 'package:nagad_clone/screens/SignInScreen/SignInScreen.dart';
import 'package:nagad_clone/screens/SignUpScreen/SignUpScreen.dart';
import 'package:nagad_clone/screens/TransactionScreen/TransactionScreen.dart';
import 'package:nagad_clone/screens/WelcomeScreen/WelcomeScreen.dart';

void main() {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => SignInScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/sign-up': (context) => SignUpScreen(),
        '/pin-screen': (context) => PinScreen(),
        '/welcome-screen': (context) => WelcomeScreen(),
        '/home-screen': (context) => EntryScreen(),
        '/transaction-screen': (context) => TransactionScreen(),
        '/contact-screen': (context) => ContactScreen(),
        '/profile-screen': (context) => ProfileScreen(),
        '/notification-screen': (context) => NotificationScreen(),
      },

    );
  }
}

