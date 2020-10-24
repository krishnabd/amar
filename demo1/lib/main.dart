import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'search.dart';
import 'vehiclehire.dart';
import 'chat.dart';
import 'history.dart';
import 'wifi.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:characters/characters.dart';
import 'calender.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Okay Journey',
      routes: {
        '/home': (context) => HomeScreenn(),
        '/form': (context) => HomeScreen(),
        '/hire': (context) => vehiclehire(),
        '/chat': (context) => chat(),
        '/history': (context) => history(),
        '/wifi': (context) => wifi(),
        '/bus': (context) => calender(),
      },
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.purple[50],
          fontFamily: "RobotoMono",
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Color(0xFF4B4B4B)),
          )),
      initialRoute: '/home',
    );
  }
}

class HomeScreenn extends StatefulWidget {
  @override
  _HomeScreennState createState() => _HomeScreennState();
}

class _HomeScreennState extends State<HomeScreenn> {
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
  List<bool> isSelected;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isSelected = [
      true,
      false,
      false,
    ];
  }

//  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: appBarContent(),
      ),
      bottomNavigationBar: CurvedNavigationBar(
//        currentIndex: _currentIndex,
        index: 2,
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
//            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(right: 9, left: 9),
              padding: EdgeInsets.only(top: 8, bottom: 8, right: 30),
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
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(7.0),
                  bottomRight: Radius.circular(7.0),
                  topLeft: Radius.circular(7.0),
                  bottomLeft: Radius.circular(7.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                    color: Colors.purple[800],
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    onPressed: () {},
                    child: Text(
                      "Vehicle Book",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  FlatButton(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                    color: Colors.white,
                    textColor: Colors.black,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    onPressed: () {
                      Navigator.pushNamed(context, '/hire');
                    },
                    child: Text(
                      "Vehicle Hire",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),
//            Container(
//              margin: EdgeInsets.only(top: 15, right: 9, left: 9),
//              padding: EdgeInsets.only(top: 5, bottom: 8, right: 10, left: 15),
//              decoration: BoxDecoration(
//                boxShadow: [
//                  BoxShadow(
//                    color: Colors.black12,
//                    blurRadius: 2.0, // has the effect of softening the shadow
//                    spreadRadius: 2.0, // has the effect of extending the shadow
//                    offset: Offset(
//                      0.0, // horizontal, move right 10
//                      5.0, // vertical, move down 10
//                    ),
//                  )
//                ],
//                color: Colors.white,
//                borderRadius: BorderRadius.only(
//                  topRight: Radius.circular(7.0),
//                  bottomRight: Radius.circular(7.0),
//                  topLeft: Radius.circular(7.0),
//                  bottomLeft: Radius.circular(7.0),
//                ),
//              ),
//              child: Column(
//                children: [
//                  Row(
//                    children: [
//                      InkWell(
//                        child: Text("Get 22 OkayPoint on Referral",
//                            style: TextStyle(
//                                fontWeight: FontWeight.w900, fontSize: 20)),
//                        onTap: () {},
//                      ),
//                    ],
//                  ),
//                  Column(
//                    children: [
//                      Row(
//                        children: [
//                          Container(
//                            margin: EdgeInsets.only(bottom: 30),
//                            child: Row(
//                              children: [
//                                Column(
//                                  children: [
//                                    InkWell(
//                                      child: Text(
//                                          "Refer your friends with referral \ncode and both of you get 22 \nOkayPoint",
//                                          style: TextStyle(
//                                              fontWeight: FontWeight.w500,
//                                              fontSize: 15,
//                                              color: Colors.black45)),
//                                      onTap: () {},
//                                    ),
//                                    Container(
//                                      margin: EdgeInsets.only(right: 110),
//                                      child: InkWell(
//                                        child: Text("Refer Now",
//                                            style: TextStyle(
//                                                fontWeight: FontWeight.w900,
//                                                fontSize: 20,
//                                                color: Colors.purple[800])),
//                                        onTap: () {},
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              ],
//                            ),
//                          ),
//                          Container(
//                            margin: EdgeInsets.only(left: 50),
//                            child: InkWell(
//                              onTap: () {},
//                              child: Image(
//                                image: AssetImage('asset/offer.jpg'),
//                                height: 100,
//                              ),
//                            ),
//                          ),
//                        ],
//                      ),
//                    ],
//                  ),
//                ],
//              ),
//            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 10, left: 10),
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
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(7.0),
                  bottomRight: Radius.circular(7.0),
                  topLeft: Radius.circular(7.0),
                  bottomLeft: Radius.circular(7.0),
                ),
              ),
              padding: EdgeInsets.all(10),
              child: rowIcons(),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 10, left: 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(7.0),
                  bottomRight: Radius.circular(7.0),
                  topLeft: Radius.circular(7.0),
                  bottomLeft: Radius.circular(7.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ToggleButtons(
//                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    selectedColor: Colors.white,
                    fillColor: Colors.purple[800],
                    selectedBorderColor: Colors.purple,
                    splashColor: null,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, right: 30, left: 30, bottom: 15),
                        child: Text('One way', style: TextStyle(fontSize: 15)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child:
                            Text('Round Trip', style: TextStyle(fontSize: 15)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child:
                            Text('Multi city', style: TextStyle(fontSize: 15)),
                      ),
                    ],
                    isSelected: isSelected,
                    onPressed: (index) {
                      setState(() {
                        for (var i = 0; i < isSelected.length; i++) {
                          if (i == index) {
                            isSelected[i] = true;
                          } else {
                            isSelected[i] = false;
                          }
                        }
                      });
                    },
                  ),
                  Container(
                    padding:
                        EdgeInsets.only(top: 20, right: 5, left: 5, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('From', style: TextStyle(fontSize: 20)),
                        Text('To', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 5, left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('KTM',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple[600]),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.swap_horiz),
                            color: Colors.purple,
                            iconSize: 30,
                            onPressed: () {},
                          ),
                        ),
                        Text('BRT',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 5, left: 5, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Kathmandu', style: TextStyle(fontSize: 20)),
                        Text('Biratnagar', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      children: [
                        Text('Depart Date', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('6,9 2077', style: TextStyle(fontSize: 30)),
                        VerticalDivider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FlatButton(
                              color: Colors.white,
                              textColor: Colors.purple,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colors.purpleAccent,
                              onPressed: () {},
                              child: Text(
                                "Tommorow",
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ),
                            FlatButton(
                              color: Colors.white,
                              textColor: Colors.purple,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colors.purpleAccent,
                              onPressed: () {},
                              child: Text(
                                "Day After",
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    padding:
                        EdgeInsets.only(top: 20, right: 5, left: 5, bottom: 10),
                    child: Row(
                      children: [
                        Text('Seats Required', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('01 Traveller', style: TextStyle(fontSize: 30)),
                        InkWell(
                          child:
                              Text("1", style: TextStyle(color: Colors.purple)),
                          onTap: () {},
                        ),
                        InkWell(
                          child:
                              Text("2", style: TextStyle(color: Colors.purple)),
                          onTap: () {},
                        ),
                        InkWell(
                          child:
                              Text("3", style: TextStyle(color: Colors.purple)),
                          onTap: () {},
                        ),
                        InkWell(
                          child:
                              Text("4", style: TextStyle(color: Colors.purple)),
                          onTap: () {},
                        ),
                        InkWell(
                          child:
                              Text("5", style: TextStyle(color: Colors.purple)),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Text(
                            "6",
                            style: TextStyle(color: Colors.purple),
                          ),
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 120.0),
                          color: Colors.purple[800],
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          splashColor: Colors.purpleAccent,
                          onPressed: () {
//                            Navigator.pushReplacementNamed(context, '/form');
                            Navigator.pushNamed(context, '/form');
                          },
                          child: Text(
                            "Search",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 1,
                  height: 300.0,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                ),
                items: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('asset/1st.png'))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('asset/2nd.jpg'))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('asset/3rd.png'))),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 12,
                right: 9,
                left: 9,
                bottom: 10,
              ),
              padding: EdgeInsets.only(top: 8, right: 30),
//              height: 70,
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
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                  topLeft: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Payments Partner',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black45,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('asset/khalti.jpg'),
                        height: 50,
                      ),
                      Image(
                        image: AssetImage('asset/esewa.png'),
                        height: 50,
                      ),
                      Image(
                        image: AssetImage('asset/imepay.jpg'),
                        height: 50,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),

//
    );
  }
}

Widget appBarContent() {
  return AppBar(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(50),
      ),
    ),
    backgroundColor: Colors.purple[800],
    titleSpacing: 7,
    elevation: 0,
    toolbarHeight: 100,
    leading: Container(
      padding: EdgeInsets.only(bottom: 40),
      child: IconButton(
        icon: Icon(Icons.account_circle),
        color: Colors.white,
        iconSize: 50.0,
        onPressed: () {},
      ),
    ),
    actions: [
      Container(
        padding: EdgeInsets.only(bottom: 40),
        child: IconButton(
          icon: Icon(Icons.notifications),
          color: Colors.white,
          iconSize: 30,
          onPressed: () {},
        ),
      ),
      Container(
        padding: EdgeInsets.only(bottom: 40),
        child: IconButton(
          icon: Icon(Icons.more_vert),
          color: Colors.white,
          iconSize: 30,
          onPressed: () {},
        ),
      ),
    ],
    title: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: EdgeInsets.only(bottom: 10), child: Text('OkayJourney')),
        Padding(
          padding: const EdgeInsets.only(bottom: 40, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Booking Happiness',
                style: TextStyle(fontSize: 10),
              ),
              Text(
                '*Okay Point',
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget rowIcons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        children: [
          IconButton(
            icon: Icon(Icons.directions_bus),
            color: Colors.purple,
            onPressed: () {
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => calender()),
//              );
            },
          ),
          Text('Bus', style: TextStyle(fontSize: 20)),
        ],
      ),
      Column(
        children: [
          IconButton(
            icon: Icon(Icons.directions_car),
            color: Colors.purple,
            onPressed: () {},
          ),
          Text('Sumo', style: TextStyle(fontSize: 20)),
        ],
      ),
      Column(
        children: [
          IconButton(
            icon: Icon(Icons.local_taxi),
            color: Colors.purple,
            onPressed: () {},
          ),
          Text('Hiace', style: TextStyle(fontSize: 20)),
        ],
      ),
      Column(
        children: [
          IconButton(
            icon: Icon(Icons.place),
            color: Colors.purple,
            onPressed: () {},
          ),
          Text('Tour', style: TextStyle(fontSize: 20)),
        ],
      ),
    ],
  );
}
