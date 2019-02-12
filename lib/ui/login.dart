import 'package:flutter/material.dart';
import './register.dart';

class LoginScreen extends StatelessWidget {
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
                height: 160,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "User Id", prefixIcon: Icon(Icons.person)),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Password", prefixIcon: Icon(Icons.lock)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ButtonTheme(
                minWidth: 300.0,
                child: RaisedButton(
                  color: Colors.grey[350],
                  child: Text("LOGIN"),
                  onPressed: () {},
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                onPressed: () {},
                child: Text("Register New Account"),
                textColor: Colors.blueGrey,
                
              ),
            ),
          ],
        )),
      ),
    );
  }
}
