import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nagad_clone/screens/NotificationScreen/allNotifications.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('নোটিফিকেশন'),
        centerTitle: true,
        backgroundColor: HexColor('#ea431f'),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: allNotifications.length,
          itemBuilder: (context, index) {

            String title = allNotifications[index]['title'];
            String shortTitle;
            if(title.length >= 35) {
               shortTitle = title.substring(0, 35) + '...';
            }
            else {
              shortTitle = title;
            }
            String description = allNotifications[index]['description'];
            String shortDescription;
            if(description.length >= 70) {
              shortDescription = description.substring(0, 70) + '...';
            }
            else {
              shortDescription = description + '...';
            }
            String time = allNotifications[index]['time'];

            return GestureDetector(
              child: Container(
                height: 100,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                      ),
                    ]
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Image.asset('images/notification.jpg',),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width * 0.70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('$shortTitle'),
                            Text('$time'),
                            Text('$shortDescription')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      )
    );
  }
}
