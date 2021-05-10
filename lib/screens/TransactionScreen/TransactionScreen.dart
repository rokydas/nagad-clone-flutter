import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TransactionScreen extends StatefulWidget {
  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            color: HexColor('#ED4B27'),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Text(
                    'লেনদেন',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                    ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}