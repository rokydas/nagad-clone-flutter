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
      body: GestureDetector(
          onTap: () {FocusScope.of(context).requestFocus(new FocusNode());},
          child: Body()
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 50,),
        Center(
          child: Icon(
              Icons.message_outlined,
              color: HexColor('#ED4B27'),
              size: 120,
          ),
        ),
        Text('নগদ পিন', textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15
            ),
        ),
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
        Container(
          decoration: BoxDecoration(
            color: HexColor('#ED4B27'),
            borderRadius: BorderRadius.circular(20)
          ),
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08
          ),
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.15,
          ),
          child:
          TextButton(
            onPressed: () => {
              Navigator.pushNamed(context, '/welcome-screen')
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'সাইন ইন',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.05 ,),
        Text(
            'পিন নাম্বার ভুলে গিয়েছেন?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
        ),
      ],
    );
  }
}
