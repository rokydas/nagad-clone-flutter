import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                color: HexColor('#ED4B27')
            ),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Image.asset(
                  'images/text.png',
                  width: MediaQuery.of(context).size.width * 0.20,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Text(
                  'ডাক বিভাগের ডিজিটাল লেনদেন',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(
                  'ঝংকার মাহবুব',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                  child: FlatButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: () => {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'images/circle-logo.png',
                            width: MediaQuery.of(context).size.width * 0.08,
                          ),
                          Text(
                            'ব্যালেন্স জানতে ট্যাপ করুন',
                            style: TextStyle(
                              color: HexColor('#ED4B27'),
                            ),
                          )
                        ],
                      )
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
            child: Text(
              'সার্ভিস সমূহ',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OptionBox('সেন্ড মানি'),
              OptionBox('ক্যাশ আউট'),
              OptionBox('মোবাইল রিচার্জ'),
              OptionBox('এড মানি'),
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
            child: Text(
              'পেমেন্ট',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OptionBox('মার্চেন্ট পে'),
              OptionBox('বিল পে'),
              OptionBox('ডোনেশন'),
              OptionBox('আইকর'),
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
            child: Text(
              'অন্যান্য',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OptionBox('নগদ খবর'),
              OptionBox('যোগাযোগ করুন'),
              OptionBox('লিমিট ও চার্জ'),
            ],
          ),

        ],
      ),
    );
  }
}

class OptionBox extends StatelessWidget {
  OptionBox(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.20,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [HexColor('#d9816d'), HexColor('#ED4B27')]
              ),
            ),
            child: Image.asset('images/white.png'),
          ),
          SizedBox(height: 5),
          Text(
            '$text',
            style: TextStyle(
                fontSize: 11
            ),
          )
        ],
      ),
    );
  }
}
