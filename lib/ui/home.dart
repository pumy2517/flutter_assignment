import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Home"),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                child: Center(
                  child: Text(
                    "Home",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.grey),
                  ),
                ),
                color: Colors.white,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Notify",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.grey),
                  ),
                ),
                color: Colors.white,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Map",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.grey),
                  ),
                ),
                color: Colors.white,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Profile",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.grey),
                  ),
                ),
                color: Colors.white,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Setup",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.grey),
                  ),
                ),
                color: Colors.white,
              ),
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.view_compact),
              ),
              Tab(
                icon: Icon(Icons.notifications),
              ),
              Tab(
                icon: Icon(Icons.explore),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
              Tab(
                icon: Icon(Icons.settings),
              ),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white24,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.white,
          ),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
