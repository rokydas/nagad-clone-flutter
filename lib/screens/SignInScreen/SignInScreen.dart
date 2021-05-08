import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Center(child: Text('নগদ')),
          backgroundColor: HexColor('#ED4B27'),
        ),
        body: GestureDetector (
            onTap: () {FocusScope.of(context).requestFocus(new FocusNode());},
            child: SafeArea(child: Body())
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_rounded),
            label: 'স্টোর সন্ধান',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'অফার',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'সাহায্য',
            backgroundColor: Colors.green,
          ),

        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          // padding: EdgeInsets.all(20),
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.2),
          child: Image.asset('images/logo.png'),
        ),
        Text(
          'স্বাগতম',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width * 0.1,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              // border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.call_rounded),
              // labelText: 'মোবাইল নাম্বার',
              hintText: 'মোবাইল নাম্বার',
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.05 ,),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.15,
          ),
          child:
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15),
                side: BorderSide(
                  width: 2.0,
                  color: HexColor('#ED4B27'),
                )
            ),
            onPressed: () => {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'পরবর্তী',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ],
            ),

          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 40),
          child: Text(
              'এখনো রেজিস্টার করেন নি?',
              textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          onPressed: () => {
            Navigator.pushNamed(context, '/sign-up')
          },
          child: Text(
              'রেজিস্ট্রেশন করুন',
              style: TextStyle(
                color: HexColor('#ED4B27'),
                fontSize: 20
              ),
          ),
        )
      ],
    );
  }
}
