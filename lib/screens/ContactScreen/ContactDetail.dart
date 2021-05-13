import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ContactDetail extends StatelessWidget {
  final String name;
  final String gender;
  final String number;

  ContactDetail(this.name, this.gender, this.number);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('কনট্যাক্টস'),
        centerTitle: true,
        backgroundColor: HexColor('#ED4B27'),
      ),
      body: ListView(
        children: [
          SizedBox(height: 50,),
          CircleAvatar(
            radius: 70,
            backgroundColor: HexColor('#ececec'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                  gender == 'male' ? 'images/avatar/male.png'
                                   : 'images/avatar/female.png'
              ),
            ),
          ),
          SizedBox(height: 30,),
          Text(
              '$name',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('মোবাইল নাম্বার', style: TextStyle(color: Colors.grey),),
                    Text('$number', style: TextStyle(fontSize: 18),)
                  ],
                ),
                Icon(Icons.star, color: HexColor('#bcbdbf'),)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Divider(color: Colors.grey,),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ContainOneFourth(Icons.send_to_mobile, 'সেন্ড মানি'),
              ContainOneFourth(Icons.mobile_friendly, 'রিচার্জ'),
              ContainOneFourth(Icons.call, 'কল'),
              ContainOneFourth(Icons.email_rounded, 'এসএমএস'),
            ],
          ),
          SizedBox(height: 10,),
          Divider(color: Colors.grey,)
        ],
      )
    );
  }
}

class ContainOneFourth extends StatelessWidget {

  var icon;
  final String title;
  ContainOneFourth(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: HexColor('#e9e9e9'),
            radius: 25,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Icon(
                  icon,
                  color: HexColor('#ED4B27'),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      )
    );
  }
}
