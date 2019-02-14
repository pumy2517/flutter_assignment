import 'package:flutter/material.dart';
import './login.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<StatefulWidget> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController repassword = new TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "REGISTER",
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: email,
              style: TextStyle(color: Colors.blue),
              decoration: InputDecoration(
                  hintText: "Email",
                  enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.blue)),
                  hintStyle: TextStyle(color: Colors.blue, fontSize: 13),
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.blue,
                  )),
            ),
            TextField(
              controller: password,
              style: TextStyle(color: Colors.blue, fontSize: 30),
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password",
                  enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.blue)),
                  hintStyle: TextStyle(color: Colors.blue, fontSize: 13),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blue,
                  )),
            ),
            TextField(
              controller: repassword,
              style: TextStyle(color: Colors.blue, fontSize: 30),
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Re-Password",
                  enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.blue)),
                  hintStyle: TextStyle(color: Colors.blue, fontSize: 13),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blue,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            ButtonTheme(
              height: 45,
              child: RaisedButton(
                color: Colors.blue,
                child: Text(
                  "CONTINUE",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  if (email.text.isEmpty ||
                      password.text.isEmpty ||
                      repassword.text.isEmpty) {
                    _scaffoldKey.currentState.showSnackBar(SnackBar(
                      content: Text("กรุณาระบุข้อมูลให้ครบถ้วน"),
                    ));
                  } else if (email.text == "admin") {
                    _scaffoldKey.currentState.showSnackBar(SnackBar(
                      content: Text("user นี้มีอยู่ในระบบแล้ว"),
                    ));
                  } else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
