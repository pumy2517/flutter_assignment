import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State<StatefulWidget> {
   @override
  int _currentIndex=0;
  Widget showText(int currentIndex){
    switch (currentIndex) {
      case 0: return Text("Home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),);
      case 1: return Text("Notify",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),);
      case 2: return Text("Map",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),);
      case 3: return Text("Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),);
      case 4: return Text("Setup",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),);
        break;
      default: return Text("Home");
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
          bottomNavigationBar: BottomNavigationBar(
            type : BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (value){
              _currentIndex=value;
              setState(() {
                
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                title: Text("")
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: Text("")
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                title: Text("")
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("")
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text("")
              )   
            ],
          ),
        ),
      ),
    );
  }
}
