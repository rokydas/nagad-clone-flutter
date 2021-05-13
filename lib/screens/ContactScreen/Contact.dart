import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nagad_clone/screens/ContactScreen/ContactDetail.dart';
import 'package:nagad_clone/screens/ContactScreen/allContacts.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, size: 30,),
                  hintText: 'অনুসন্ধান...',
                ),
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.only(top: 50),
              itemCount: allContacts.length,
              itemBuilder: (context, index) {
                String name = allContacts[index]['name'];
                String gender = allContacts[index]['gender'];
                String number = allContacts[index]['number'];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ContactDetail(name, gender, number)));
                  },
                  child: Container(
                    height: 50,
                      decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: HexColor('#ececec'),
                              width: 2
                            )
                          )
                      ),
                    width: double.infinity,
                    // color: HexColor('#f8f8f8'),
                    child: Row(
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
                        Expanded(
                            child: CircleAvatar(
                              radius: 20,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(gender == 'male' ? 'images/avatar/male.png'
                                      : 'images/avatar/female.png')),
                            ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
                        Expanded(
                            flex: 8,
                            child: Text(
                            '$name',
                            style: TextStyle(
                                color: HexColor('#727272'),
                                fontSize: 17
                            ),
                        )),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ContactDetail(name, gender, number)));
                            },

                            child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.grey,
                        ),
                          ),)
                      ],
                    )
                  ),
                );
              },
            ),
          ],
        ),
    );
  }
}