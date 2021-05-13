import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight( isPortrait ? MediaQuery.of(context).size.height * 0.18
            : MediaQuery.of(context).size.height * 0.35),
        child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [HexColor('#d9816d'), HexColor('#ED4B27')],
                )
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  children: [
                    SizedBox(height: 20,),
                    Text(
                      'আমার নগদ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset('images/avatar/male.png')),
                            ),
                            SizedBox(width: 20,),
                            Text(
                              'ঝংকার মাহবুব\n01521-227862',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                              ),
                            ),
                          ],
                        ),
                        Icon(
                            Icons.edit,
                            color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),

            ),
        ),
      ),

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Container(
              color: HexColor('#fafafa'),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      'সাধারন',
                      style: TextStyle(
                        color: HexColor('#7f7f7f'),
                        fontSize: 15
                      ),
                  )),
              height: 40,
            ),
            CommonLine(Icons.language, 'ভাষা', 'বাংলা'),
            CommonLine(Icons.portrait, 'অয়াকাউন্টের ধরন', 'সাধারণ'),
            CommonLine(Icons.drag_indicator_outlined, 'মুনাফা পেতে চাই', 'হ্যাঁ'),
            CommonLine(Icons.lock, 'পিন পরিবর্তন', '>'),
            CommonLine(Icons.network_check_outlined, 'মোবাইল অপারেটর পরিবর্তন', '>'),
            CommonLine(Icons.insert_drive_file_outlined, 'কে ওয়াই সি পুনরায় জমা দিন', '>'),
            Container(
              color: HexColor('#fafafa'),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'আরো তথ্য',
                    style: TextStyle(
                        color: HexColor('#7f7f7f'),
                        fontSize: 15
                    ),
                  )),
              height: 40,
            ),
            CommonLine(Icons.privacy_tip_sharp, 'প্রাইভেসি পলিসি', '>'),
            CommonLine(Icons.question_answer_outlined, 'সাধারণ জিজ্ঞাসা', '>'),
            CommonLine(Icons.location_on_rounded, 'স্টোর সন্ধান', '>'),
            CommonLine(Icons.settings, 'অ্যাবাউট', '>'),
            CommonLine(Icons.face_retouching_natural, 'নগদ পেইজ', '>'),
            CommonLine(Icons.language, 'ওয়েবসাইট', '>'),
            CommonLine(Icons.logout, 'সাইন আউট', '>'),
          ],
        ),
      ),
    );
  }
}

class CommonLine extends StatelessWidget {

  final IconData icon;
  final String primaryText;
  var secondaryText;
  // print(secondaryText.runtimeType);

  CommonLine(this.icon, this.primaryText, this.secondaryText);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              color: HexColor('#ececec'),
              width: 2
          )
        )
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: HexColor('#ea431f'),),
              SizedBox(width: 10,),
              Text(
                '$primaryText',
                style: TextStyle(
                    fontSize: 18,
                    color: HexColor('#757575'),
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          Text(
            '$secondaryText',
            style: TextStyle(
              fontSize: 18,
              color: HexColor('#757575'),
            ),
          ),
        ],
      ),
    );
  }
}
