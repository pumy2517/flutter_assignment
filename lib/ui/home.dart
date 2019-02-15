import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State<StatefulWidget> {
  @override
  int _currentIndex = 0;
  Widget showText(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return Text(
          "Home",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 40, color: Colors.grey),
        );
      case 1:
        return Text(
          "Notify",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 40, color: Colors.grey),
        );
      case 2:
        return Text(
          "Map",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 40, color: Colors.grey),
        );
      case 3:
        return Text(
          "Profile",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 40, color: Colors.grey),
        );
      case 4:
        return Text(
          "Setup",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 40, color: Colors.grey),
        );
        break;
      default:
        return Text("Home");
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 10,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Home"),
          ),
          body: Center(child: (showText(_currentIndex))),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Colors.blue,
                primaryColor: Colors.white,
                textTheme: Theme.of(context).textTheme.copyWith(
                    caption:
                        new TextStyle(color: Colors.lightBlueAccent[200]))),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              onTap: (value) {
                _currentIndex = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.list),
                    title: Text(
                      "",
                      style: TextStyle(height: 0.0),
                    )),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications),
                    title: Text(
                      "",
                      style: TextStyle(height: 0.0),
                    )),
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore),
                    title: Text(
                      "",
                      style: TextStyle(height: 0.0),
                    )),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    title: Text(
                      "",
                      style: TextStyle(height: 0.0),
                    )),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    title: Text(
                      "",
                      style: TextStyle(height: 0.0),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
