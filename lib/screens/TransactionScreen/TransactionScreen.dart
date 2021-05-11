import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nagad_clone/screens/TransactionScreen/allTransaction.dart';

class TransactionScreen extends StatefulWidget {
  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: HexColor('#fafafa'),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.2),
          child: AppBar(
            // backgroundColor: HexColor('#ED4B27'),

            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                    colors: [HexColor('#d9816d'), HexColor('#ED4B27')]
                )
              ),
              height: 200,
              child: Center(child: Text(
                  'লেনদেন',
                  style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(child: IconText('সব'),),
                Tab(child: IconText('ইন'),),
                Tab(child: IconText('আউট'),)
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                for(var transaction in allTransactions) AllTransaction(transaction)
              ],
            ),
            ListView(
              children: [
                for(var transaction in allTransactions) transaction['isIn'] ? AllTransaction(transaction) : SizedBox.shrink()
              ],
            ),
            ListView(
              children: [
                for(var transaction in allTransactions) !transaction['isIn'] ? AllTransaction(transaction) : SizedBox.shrink()
              ],
            ),

          ],
        )

      ),
    ),
    );
  }
}

class IconText extends StatelessWidget {
  IconText(this.text);

  final String text;
  @override
  Widget build(BuildContext context) {

    return Text(
      '$text',
      style: TextStyle(fontSize: 20),
    );
  }
}

class AllTransaction extends StatelessWidget {
  @override
  AllTransaction(this.transaction);

  final Map transaction;

  Widget build(BuildContext context) {

    bool isIn = transaction['isIn'];
    String type = transaction['type'];
    String institute = transaction['institute'];
    double money = transaction['money'];
    String time = transaction['time'];

    return Container(
      width: double.infinity,
      height: 70,
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
              isIn ? Icons.arrow_forward_rounded : Icons.arrow_back_rounded,
              color: isIn ? Colors.green : Colors.red,
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('$type', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: HexColor('#666666'),
                    fontSize: 17
                ),),
                Text('$institute')
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('৳ $money', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isIn ? Colors.green : Colors.red,
                    fontSize: 17
                ),),
                Text('$time')
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
        ],
      ),
    );
  }
}

