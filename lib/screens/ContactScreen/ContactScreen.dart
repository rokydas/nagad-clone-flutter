import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nagad_clone/screens/ContactScreen/Agent.dart';
import 'package:nagad_clone/screens/ContactScreen/Contact.dart';
import 'package:nagad_clone/screens/ContactScreen/Merchant.dart';
import 'package:nagad_clone/screens/TransactionScreen/TransactionScreen.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.2),
            child: AppBar(
              // backgroundColor: HexColor('#ED4B27'),

              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [HexColor('#d9816d'), HexColor('#ED4B27')]
                    )
                ),
                height: 200,
                child: Center(child: Text(
                  'কনট্যাক্টস',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ),
              centerTitle: true,
              bottom: TabBar(
                tabs: [
                  Tab(child: IconText('কনট্যাক্টস'),),
                  Tab(child: IconText('প্রিয় উদ্যোক্তা'),),
                  Tab(child: IconText('প্রিয় মার্চেন্ট'),)
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Contact(),
              Agent(),
              Merchant()
            ],
          ),
        ),
      ),
    );
  }
}