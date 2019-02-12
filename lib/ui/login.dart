import 'package:flutter/material.dart';
import './register.dart';
import './mainpage.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<StatefulWidget> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Center(
            child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0, bottom: 20.0),
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
                minWidth: 300.0,
                child: RaisedButton(
                  color: Colors.grey[300],
                  child: Text("LOGIN"),
                  onPressed: () {
                    if (username.text.isEmpty || password.text.isEmpty) {
                    } else if (username.text == "admin" &&
                        password.text == "admin") {
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
              child: FlatButton(
                onPressed: () {},
                child: Text("Register New Account"),
                textColor: Colors.lightGreen[800],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
