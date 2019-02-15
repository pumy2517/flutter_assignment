import 'package:flutter/material.dart';
import './register.dart';
import './home.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<StatefulWidget> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Center(
            child: new ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 20.0),
              child: Image.asset(
                "resources/loginpic.jpg",
                height: 170,
              ),
            ),
            TextField(
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              controller: username,
              decoration: InputDecoration(
                  hintText: "User Id",
                  prefixIcon: Icon(
                    Icons.person,
                    size: 35.0,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock, size: 35.0)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ButtonTheme(
                minWidth: double.infinity,
                child: RaisedButton(
                  color: Colors.grey[300],
                  child: Text("LOGIN"),
                  onPressed: () {
                    if (username.text.isEmpty || password.text.isEmpty) {
                      _scaffoldKey.currentState.showSnackBar(SnackBar(
                        content: Text("กรุณาระบุ user or password"),
                      ));
                    } else if (username.text == "admin" &&
                        password.text == "admin") {
                      _scaffoldKey.currentState.showSnackBar(SnackBar(
                        content: Text("user or password ไม่ถูกต้อง"),
                      ));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainScreen()));
                    }
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ButtonTheme(
                padding: new EdgeInsets.all(0.0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()));
                  },
                  child: Text(
                    "Register New Account",
                    textAlign: TextAlign.right,
                  ),
                  textColor: Colors.lightGreen[800],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
