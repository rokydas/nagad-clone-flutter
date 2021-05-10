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
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.2,),
          Expanded(
              flex: 4,
              child: Image.asset('images/logo1.png'),
          ),
          Expanded(
            flex: 2,
            child: Center(child: Text('নগদ এপে স্বাগতম')),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    side: BorderSide(
                      width: 2.0,
                      color: HexColor('#ED4B27'),
                    )
                ),
                onPressed: () => {
                  Navigator.pushNamed(context, '/home-screen')
                },
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
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.2,),
        ],
      ),
    );
  }
}
