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
        SizedBox(height: MediaQuery.of(context).size.height*0.05 ,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              // border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.call_rounded),
              // labelText: 'মোবাইল নাম্বার',
              hintText: 'পিন',
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
                  color: Color(0xED4B27),
                )
            ),
            onPressed: () => {
              Navigator.pushNamed(context, '/welcome-screen')
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'সাইন ইন',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.05 ,),
        Text(
            'পিন নাম্বার ভুলে গিয়েছেন?',
            style: TextStyle(
              color: Colors.grey,
            ),
        ),
      ],
    );
  }
}
