import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'main.dart';
import 'chat.dart';
import 'history.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wifi',
      home: wifi(),
    ));

class wifi extends StatefulWidget {
  @override
  _wifiState createState() => _wifiState();
}

class _wifiState extends State<wifi> {
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
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              height: 250,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Connect to Okay Journey WIFI \nprovided in BUS ,SUMO or \nHiace to watch videos and \nmovies offline',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20, left: 20, top: 40),
                        decoration: BoxDecoration(
                          color: Colors.purple[800],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.arrow_forward),
                          color: Colors.white,
                          iconSize: 30.0,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        index: 1,
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
        child: Column(
          children: [
            Container(
              height: 35,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  FlatButton(onPressed: () {}, child: Text('Nepali')),
                  FlatButton(onPressed: () {}, child: Text('Hindi')),
                  FlatButton(onPressed: () {}, child: Text('English')),
                  FlatButton(onPressed: () {}, child: Text('Bhojpuri')),
                  FlatButton(onPressed: () {}, child: Text('Maithili')),
                  FlatButton(onPressed: () {}, child: Text('Newari')),
                  FlatButton(onPressed: () {}, child: Text('Tharu')),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1,
              height: MediaQuery.of(context).size.height / 1,
              child: InkWell(
                onTap: () {},
                child: Image(
                    image: AssetImage("asset/wifi.png"), fit: BoxFit.fitHeight),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
