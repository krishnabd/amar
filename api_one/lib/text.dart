import 'package:flutter/material.dart';
//import 'main.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(MaterialApp(
    home: hom(),
    routes: {
//      '/list': (context) => HomePage(),
    },
  ));
}

class hom extends StatefulWidget {
  var list;
  var ex;
  hom({this.list, this.ex});

  @override
  _homState createState() => _homState();
}

class _homState extends State<hom> {
  @override
  Widget build(BuildContext context) {
//    final String todo = ModalRoute.of(context).settings.arguments;
//    final String tod = ModalRoute.of(context).settings.arguments;
//    Navigator.pop(context, username);
//     var krishna = new todo;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: InkWell(
                    child: Text('${widget.ex == '' ? 'Kathmandu' : widget.ex}',
                        style: TextStyle(color: Colors.purple)),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
//                      debugPrint(_HomePageState._id.toString());
                    },
                  ),
                ),
              ],
            ),
            InkWell(
              child: Text('${widget.list == '' ? 'Biratnagar' : widget.list}',
                  style: TextStyle(color: Colors.purple)),
              onTap: () {
                debugPrint(widget.list.toString());
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

//class HomePage extends StatefulWidget {
//  @override
//  _HomePageState createState() => _HomePageState();
//}

//class OrderDetails {
//  static final Users= List filteredUsers;
//}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//class OrderDetails {
////  static final Users= List filteredUsers;
////}
//class IDCardClass {
//  static List filteredUsers;
//}

class _HomePageState extends State<HomePage> {
  var _controller = TextEditingController();
  List data;
  List userData;
//  MainButtons(this.filteredUsers);
  List filteredUsers;
//  List imageFile = IDCardClass.filteredUsers;
//  @override
//  void initState() {
//    super.initState();
//    filteredUsers = widget.filteredUsers;
//  }
  static var krishna;
  static int _id;
  Future getData() async {
    http.Response response =
        await http.get("http://okayjourney.com/api/admin/search/takeofpoint");
    data = json.decode(response.body);
    setState(() {
      userData = data;
      filteredUsers = userData;
    });
  }

  onItemChanged(String value) {
    setState(() {
      filteredUsers = userData
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
//    final location = Location.fetchByID(filteredUsers);

    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 1.0, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                  offset: Offset(
                    0.0, // horizontal, move right 10
                    1.0, // vertical, move down 10
                  ),
                )
              ],
              color: Colors.white,
            ),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  icon: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                  ),
                  contentPadding: EdgeInsets.all(10),
                  border: InputBorder.none,
                  hintText: 'search',
                  suffix: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      setState(() {
                        _controller.clear();
                        filteredUsers = userData;
                      });
                    },
                  )),
              onChanged: onItemChanged,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 25),
                child: Text(
                  'POPULAR CITIES',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: filteredUsers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                      color: Colors.black54,
                      padding:
                          EdgeInsets.only(right: 5, left: 5, bottom: 5, top: 5),
                      margin: EdgeInsets.only(top: 4, left: 10),
                      child: Text(
                        'NPL',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      )),
                  title: Text('${filteredUsers[index]}'[0].toUpperCase() +
                      '${filteredUsers[index]}'.toLowerCase().substring(1)),
                  trailing: Text(
                    'Nepal',
                    style: TextStyle(color: Colors.black54),
                  ),
                  onTap: () {
                    debugPrint(filteredUsers[index].toString());
                    setState(() {
//                      debugPrint(krishna.toString());
//                      _id = index;
//                      krishna = '${filteredUsers[_id]}';
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => hom(
                            ex: filteredUsers[index].toString(),
                          ),
                        ),
                      );

//                      debugPrint(_id.toString());
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class next extends StatefulWidget {
  @override
  _nextState createState() => _nextState();
}

class _nextState extends State<next> {
  var _controller = TextEditingController();
  List data;
  List userData;
//  MainButtons(this.filteredUsers);
  static List filteredUser;
//  List imageFile = IDCardClass.filteredUsers;
//  @override
//  void initState() {
//    super.initState();
//    filteredUsers = widget.filteredUsers;
//  }
  static var krishna;
  static int _id;
  Future getData() async {
    http.Response response =
        await http.get("http://okayjourney.com/api/admin/search/takeofpoint");
    data = json.decode(response.body);
    setState(() {
      userData = data;
      filteredUser = userData;
    });
  }

  onItemChanged(String value) {
    setState(() {
      filteredUser = userData
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
//    final location = Location.fetchByID(filteredUsers);

    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 1.0, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                  offset: Offset(
                    0.0, // horizontal, move right 10
                    1.0, // vertical, move down 10
                  ),
                )
              ],
              color: Colors.white,
            ),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  icon: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                  ),
                  contentPadding: EdgeInsets.all(10),
                  border: InputBorder.none,
                  hintText: 'search',
                  suffix: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      setState(() {
                        _controller.clear();
                        filteredUser = userData;
                      });
                    },
                  )),
              onChanged: onItemChanged,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 25),
                child: Text(
                  'POPULAR CITIES',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: filteredUser.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                      color: Colors.black54,
                      padding:
                          EdgeInsets.only(right: 5, left: 5, bottom: 5, top: 5),
                      margin: EdgeInsets.only(top: 4, left: 10),
                      child: Text(
                        'NPL',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      )),
                  title: Text('${filteredUser[index]}'[0].toUpperCase() +
                      '${filteredUser[index]}'.toLowerCase().substring(1)),
                  trailing: Text(
                    'Nepal',
                    style: TextStyle(color: Colors.black54),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => hom(
                          list: filteredUser[index].toString(),
                        ),
                      ),
                    );
                    setState(() {
//                      debugPrint(filteredUser[index].toString());

//                      _id = index;
//                      krishna = '${filteredUser[_id]}';
                      Navigator.pop(context);

//                      debugPrint(_id.toString());
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
