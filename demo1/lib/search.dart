import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[600],
          title: Text('Form'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 20, right: 35, left: 15, bottom: 10),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Book Date Range 1',
                        style: TextStyle(fontSize: 15, color: Colors.blueGrey)),
                    Text('Book Date Range 2',
                        style: TextStyle(fontSize: 15, color: Colors.blueGrey)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('6, 11 2077', style: TextStyle(fontSize: 15)),
                    Text('6, 11 2077', style: TextStyle(fontSize: 15)),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
//                  padding: EdgeInsets.only(right: 250, top: 25),
                  color: Colors.grey.withOpacity(0.5),
                  height: 600,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 250, top: 25),
                        child: Column(
                          children: [
                            Text('Name', style: TextStyle(fontSize: 25)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 350,
                              child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Color(0xFFDBEDFF),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ))),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 250, top: 25),
                        child: Column(
                          children: [
                            Text('Phone', style: TextStyle(fontSize: 25)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 350,
                              child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Color(0xFFDBEDFF),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ))),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 120, top: 25),
                        child: Column(
                          children: [
                            Text('Payment Method',
                                style: TextStyle(fontSize: 25)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 220),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20.0),
                              child: DropdownButton(
                                value: _value,
                                items: [
                                  DropdownMenuItem(
                                    child: Text("e-sewa"),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Khalti"),
                                    value: 2,
                                  ),
                                  DropdownMenuItem(
                                      child: Text("IME pay"), value: 3)
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    _value = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 220,
                        ),
                        child: Column(
                          children: [
                            Text('Message', style: TextStyle(fontSize: 25)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 350,
                              child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 60.0),
                                      filled: true,
                                      fillColor: Color(0xFFDBEDFF),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ))),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 120.0),
                          color: Colors.purple,
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          splashColor: Colors.purpleAccent,
                          onPressed: () {},
                          child: Text(
                            "Search",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
