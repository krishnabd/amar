import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'wifi.dart';
import 'main.dart';
import 'chat.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'History',
      home: history(),
    ));

class history extends StatefulWidget {
  @override
  _historyState createState() => _historyState();
}

class _historyState extends State<history> {
  int _currentIndex = 0;
  _onTap() {
    // this has changed
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) =>
            _children[_currentIndex])); // this has changed
  }

  final List<Widget> _children = [
    wifi(),
    wifi(),
    HomeScreenn(),
    history(),
    chat()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        titleSpacing: 7,
        elevation: 0,
        toolbarHeight: 70,
//          toolbarHeight: 100,
        leading: Container(
//            margin: EdgeInsets.only(bottom: 10),
//            padding: EdgeInsets.only(left: 15),
          child: IconButton(
            padding: EdgeInsets.only(left: 15, bottom: 20),
            icon: Icon(Icons.account_circle),
            color: Colors.white,
            iconSize: 70.0,
            onPressed: () {},
          ),
        ),
        actions: [
          Container(
//              padding: EdgeInsets.only(bottom: 0),
            child: IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.white,
              iconSize: 35,
              onPressed: () {},
            ),
          ),
          Container(
//              padding: EdgeInsets.only(bottom: 40),
            child: IconButton(
              icon: Icon(Icons.more_vert),
              color: Colors.white,
              iconSize: 35,
              onPressed: () {},
            ),
          ),
        ],
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.only(top: 30),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15, left: 30),
                  child: Text(
                    'OkayJourney',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(bottom: 40, left: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Booking Happiness',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    '*Okay Point',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
//        currentIndex: _currentIndex,
        index: 3,
        color: Colors.white,
        backgroundColor: Colors.purple[100],
        buttonBackgroundColor: Colors.purple[600],
        height: 50,
        items: <Widget>[
          Icon(Icons.place, size: 20, color: Colors.black),
          Icon(Icons.favorite, size: 20, color: Colors.black),
          Icon(Icons.home, size: 20, color: Colors.black),
          Icon(Icons.history, size: 20, color: Colors.black),
          Icon(Icons.chat, size: 20, color: Colors.black),
        ],
        onTap: (index) {
          // this has changed
          setState(() {
            _currentIndex = index;
          });
          _onTap();
        },
      ),
      body: Container(
        padding: EdgeInsets.only(left: 120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'History will appear here.',
              style:
                  TextStyle(fontWeight: FontWeight.w400, color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
