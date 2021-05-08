import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('সাইন ইন'),
        centerTitle: true,
        backgroundColor: HexColor('#ED4B27'),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50,),
        Center(
          child: Icon(
              Icons.message_outlined,
              color: HexColor('#ED4B27'),
              size: 120,
          ),
        ),
        Text('নগদ পিন'),
      ],
    );
  }
}
