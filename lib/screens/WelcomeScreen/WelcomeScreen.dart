import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.15,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Image.asset('images/logo1.png'),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
          Text(
              'নগদ এপে স্বাগতম',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: HexColor('#ED4B27'),
                fontWeight: FontWeight.bold
              ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: HexColor('#ED4B27'),
            ),
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.08
            ),
            child: TextButton(
              onPressed: () => {
                Navigator.pushNamed(context, '/home-screen')
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'পরবর্তী',
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
          SizedBox(height: MediaQuery.of(context).size.height * 0.15,),
        ],
      ),
    );
  }
}
