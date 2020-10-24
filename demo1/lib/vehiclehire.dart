import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Okay Journey',
      theme: ThemeData(),
      home: vehiclehire(),
    ));

class vehiclehire extends StatefulWidget {
  @override
  _vehiclehireState createState() => _vehiclehireState();
}

class _vehiclehireState extends State<vehiclehire> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.purple[800],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Vehicle Hire',
              style: TextStyle(fontSize: 25.0),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 870,
          child: Stack(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(),
                margin: EdgeInsets.only(bottom: 600),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("asset/vec.jpg"), fit: BoxFit.fill)),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 118, right: 9, left: 9, bottom: 10),
                padding: EdgeInsets.only(top: 18, bottom: 8, right: 30),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2.0, // has the effect of softening the shadow
                      spreadRadius:
                          2.0, // has the effect of extending the shadow
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
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text('Let Us Know Your Requirements',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Container(
                            margin: EdgeInsets.only(right: 140, top: 15),
                            child: Text('Hire Vehicle Details',
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 20, right: 25, left: 35, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('From',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey)),
                          Text('To',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey)),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20, left: 35),
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
                      padding: EdgeInsets.only(right: 15, left: 35, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Kathmandu',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                          Text('Biratnagar',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.only(right: 30, left: 35, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('DEPARTURE DATE',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w800)),
                          Text('RETURN DATE',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w800)),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 50, left: 35, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('6,20 2077', style: TextStyle(fontSize: 20)),
                          Text('6,20 2077', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 145, top: 15),
                      child: Column(
                        children: [
                          Text('Type of Vechicles',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    Container(
//                width: 350,
                      padding: EdgeInsets.only(top: 20, left: 30),
                      child: DropdownButton(
                        icon: Icon(Icons.arrow_drop_down),
                        isExpanded: true,
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              "Car",
                              style: TextStyle(fontSize: 20),
                            ),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Scarpio",
                              style: TextStyle(fontSize: 20),
                            ),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Hiase",
                              style: TextStyle(fontSize: 20),
                            ),
                            value: 3,
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Taxi",
                              style: TextStyle(fontSize: 20),
                            ),
                            value: 4,
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Sumo",
                              style: TextStyle(fontSize: 20),
                            ),
                            value: 5,
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Bus",
                              style: TextStyle(fontSize: 20),
                            ),
                            value: 6,
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 90),
                      child: Column(
                        children: [
                          Text('Personal Contact Details',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 1.2,
//
                        child: TextField(
                          cursorColor: Colors.purple,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Full Name',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 1.2,
//              height: 45,
                        padding: EdgeInsets.only(left: 16, right: 16),

                        child: TextField(
                          cursorColor: Colors.purple,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Phone Number',
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(
                            padding: EdgeInsets.only(
                                right: 80, left: 80, top: 20, bottom: 20),
                            color: Colors.purple[800],
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            disabledColor: Colors.grey,
                            disabledTextColor: Colors.black,
                            splashColor: Colors.purpleAccent,
                            onPressed: () {
//
                            },
                            child: Text(
                              "SUBMIT",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
