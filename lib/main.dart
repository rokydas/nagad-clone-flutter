import 'package:flutter/material.dart';
import 'package:nagad_clone/screens/PinScreen/PinScreen.dart';
import 'package:nagad_clone/screens/SignInScreen/SignInScreen.dart';
import 'package:nagad_clone/screens/SignUpScreen/SignUpScreen.dart';

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
      },

    );
  }
}

