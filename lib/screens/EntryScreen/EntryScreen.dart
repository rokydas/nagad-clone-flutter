import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nagad_clone/screens/ContactScreen/ContactScreen.dart';
import 'package:nagad_clone/screens/HomeScreen/HomeScreen.dart';
import 'package:nagad_clone/screens/ProfileScreen/ProfileScreen.dart';
import 'package:nagad_clone/screens/TransactionScreen/TransactionScreen.dart';

class EntryScreen extends StatefulWidget {
  @override
  _EntryScreenState createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {

  int index = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    TransactionScreen(),
    ContactScreen(),
    ProfileScreen()
  ];

  void _onItemTapped (int newIndex) {
      setState(() {
        index = newIndex;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(index),
      bottomNavigationBar: BottomNavigationBar(

        onTap: _onItemTapped,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: HexColor('#ED4B27'),
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/circle-logo.png'),
            ),
            label: 'হোম',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: 'লেনদেন',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts_rounded),
            label: 'কনট্যাক্টস',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            label: 'আমার নগদ',
          ),

        ],
      ),
    );
  }
}


