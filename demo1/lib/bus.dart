import 'package:flutter/material.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart';
import 'package:nepali_utils/nepali_utils.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'bus',
        home: bus(),
      ),
    );

class bus extends StatefulWidget {
  @override
  _busState createState() => _busState();
}

class _busState extends State<bus> {
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
