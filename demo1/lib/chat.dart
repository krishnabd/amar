import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'main.dart';
import 'wifi.dart';
import 'history.dart';
import 'vehiclehire.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'History',
      home: chat(),
    ));

class chat extends StatefulWidget {
  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
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
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      '*Okay Point',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
//        currentIndex: _currentIndex,
          index: 4,
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
        body: SingleChildScrollView(
          child: Container(
//            margin: EdgeInsets.only(top: 15, right: 9, left: 9),
//            padding: EdgeInsets.only(top: 5, bottom: 8, right: 10, left: 15),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2.0, // has the effect of softening the shadow
                  spreadRadius: 2.0, // has the effect of extending the shadow
                  offset: Offset(
                    0.0, // horizontal, move right 10
                    5.0, // vertical, move down 10
                  ),
                )
              ],
              color: Colors.grey[200],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: (BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                        )),
                        padding: EdgeInsets.only(left: 20),

                        height: 55,
                        width: MediaQuery.of(context).size.width / 1.34,
//
                        child: TextField(
                          cursorColor: Colors.purple,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your message ',
                            hintStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                            fillColor: Colors.white,
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.add,
                                size: 40,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 2),
                        child: FlatButton(
                          padding: EdgeInsets.all(20),
//                        color: Colors.purple[800],
                          textColor: Colors.purple[800],
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          onPressed: () {
//
                          },
                          child: Text(
                            "Send",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
