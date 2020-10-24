import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Login(),
    ));

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showPassword = false;
  bool _isChecked = false;
  void onChanged(bool value) {
    setState(() {
      _isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 35,
              ),
              child: Image(
                image: AssetImage('assets/unnamed.png'),
                height: 200,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Booking Happiness',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Welcome to Login',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple[900]),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.2,
//              height: 45,
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    color: Colors.white,
                    boxShadow: [BoxShadow(blurRadius: 3)]),
                child: TextField(
                  cursorColor: Colors.purple,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email or Mobile no.',
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.mail,
                      color: Colors.purple[300],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.2,
//              height: 45,
              padding: EdgeInsets.only(left: 16, right: 16),
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  color: Colors.white,
                  boxShadow: [BoxShadow(blurRadius: 3)]),
              child: TextField(
                obscureText: !this._showPassword,
                cursorColor: Colors.purple,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  icon: Icon(
                    Icons.vpn_key,
                    color: Colors.purple[300],
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        this._showPassword = !this._showPassword;
                      });
                    },
                    icon: Icon(
                      Icons.visibility_off,
                      color: Colors.grey,
                    ),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 55),
              child: Row(
                children: <Widget>[
                  new Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.purple[900],
                      value: _isChecked,
                      onChanged: (bool value) {
                        onChanged(value);
                      }),
                  Text(
                    'Remember Me',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40),
                    child: InkWell(
                      child: Text("Forgot password?",
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
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
                      "LOGIN",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    padding: EdgeInsets.only(
                        right: 45, left: 45, top: 20, bottom: 20),
                    color: Colors.white,
                    textColor: Colors.black54,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                        side: BorderSide(color: Colors.grey)),
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    splashColor: Colors.purpleAccent,
                    onPressed: () {
//
                    },
                    child: Text(
                      "Register Here",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(13),
              child: InkWell(
                child: Text(
                  "Skip",
                  style: TextStyle(fontSize: 20, color: Colors.black45),
                ),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
