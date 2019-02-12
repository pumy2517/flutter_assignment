import 'package:flutter/material.dart';
import './ui/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment1',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),

      initialRoute: "/",
      routes: {
        "/": (context) => LoginScreen(),
      },
    );
  }
}

