import 'package:flutter/material.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart';
import 'package:nepali_utils/nepali_utils.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'bus',
        home: calender(),
      ),
    );

class calender extends StatefulWidget {
  @override
  _calenderState createState() => _calenderState();
}

class _calenderState extends State<calender> {
  NepaliDateTime _dateTime;
//  NepaliDateFormat
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
              margin: EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 10),
              padding: EdgeInsets.all(20),
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
                        InkWell(
//                          child: Text(NepaliDateTime.now().toString()),
//                          child: Text(
//                            NepaliDateFormat("EEE, MMMM d, y")
//                                .format(NepaliDateTime.now()),
//                          ),
//                          child: Text(_dateTime == null
//                              ? NepaliDateFormat("EEE, MMMM d, y")
//                                  .format(NepaliDateTime.now())
//                              : _dateTime.toString()),
                          child: Text(_dateTime == null
                              ? NepaliDateFormat("EE, MMMM d, y")
                                  .format(NepaliDateTime.now())
                              : NepaliDateFormat("EE, MMMM d, y")
                                  .format(_dateTime)),
                          onTap: () {
                            showAdaptiveDatePicker(
                              context: context,
                              initialDate: _dateTime == null
                                  ? NepaliDateTime.now()
                                  : _dateTime,
                              firstDate: NepaliDateTime(2070),
                              lastDate: NepaliDateTime(2090),
                              initialDatePickerMode: DatePickerMode.day,
                            ).then((date) {
                              setState(() {
                                _dateTime = date;
                              });
                            });
                          },
                        ),
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
                              onPressed: () {
                                setState(() {
                                  _dateTime = NepaliDateTime.now()
                                      .add(Duration(days: 1));
                                });
                              },
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
                              onPressed: () {
                                setState(() {
                                  _dateTime = NepaliDateTime.now()
                                      .add(Duration(days: 2));
                                });
                              },
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
          ],
        ),
      ),
    );
  }
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
            onPressed: () {},
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
