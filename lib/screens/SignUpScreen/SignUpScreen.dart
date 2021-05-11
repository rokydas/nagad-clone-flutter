import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('রেজিস্ট্রেশন'),
        backgroundColor: HexColor('#ED4B27'),
        centerTitle: true,
      ),
      body: GestureDetector(
          onTap: () {FocusScope.of(context).requestFocus(new FocusNode());},
          child: SafeArea(
            child: Body(),
          ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.2),
            child: Image.asset('images/logo.png'),
          ),
          Text(
              'একাউন্ট তৈরি করুন',
              textAlign: TextAlign.center,
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
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: HexColor('#ED4B27'),
          ),
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.08,
          ),
          child:
          TextButton(
            onPressed: () => {
              Navigator.pushNamed(context, '/pin-screen')
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'পরবর্তী ধাপ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(children: [
          Expanded(
            child: Divider(
              thickness: 3,
              color: HexColor('#ED4B27'),
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: Text(
                  'অথবা',
                  style: TextStyle(
                    fontSize: 20
                  ),
              )
          ),
          Expanded(
            child: Divider(
              thickness: 3,
              color: HexColor('ED4B27'),
            ),
          ),
        ],),
        Center(child: Text('রেজিস্ট্রেশন করতে আপনার মোবাইল ফোন, ছবি ও\nএন আই ডি কপি সহ উদ্যোক্তা পয়েন্ট পরিদর্শন করুন।')),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Icon(
              Icons.location_on,
              size: 35,
              color: HexColor('#ED4B27'),
          ),
        ),
        Center(child: Text('নগদ উদ্যোক্তা খুঁজতে ট্যাপ করুন'))
      ],
    );
  }
}

