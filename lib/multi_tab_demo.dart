import 'package:flutter/material.dart';
import 'package:hello_world/tabs/first.dart';
import 'package:hello_world/tabs/second.dart';
import 'package:hello_world/tabs/third.dart';


void main() {
  runApp(new MaterialApp(
      // Title
      title: "Using Tabs",
      // Home
      home: new MyHome()));
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => new MyHomeState();
}

// SingleTickerProviderStateMixin is used for animation
class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // Appbar
      appBar: new AppBar(
        // Title
        title: new Text("Using Bottom Navigation Bar"),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.playlist_play),
              tooltip: 'Air it',
              onPressed: null,
            ),
            new IconButton(
              icon: new Icon(Icons.playlist_add),
              tooltip: 'Restitch it',
              onPressed: null,
            ),
            new IconButton(
              icon: new Icon(Icons.playlist_add_check),
              tooltip: 'Repair it',
              onPressed: null,
            ),
          ],
        // Set the background color of the App Bar
        backgroundColor: Colors.blue,
        bottom: new TabBar(tabs: <Tab>[
          new Tab(
            // set icon to the tab
            icon: new Icon(Icons.favorite),
          ),
          new Tab(
            icon: new Icon(Icons.adb),
          ),
          new Tab(
            icon: new Icon(Icons.airport_shuttle),
          ),
        ],

          controller: controller,
      )
      ),
      // Set the TabBar view as the body of the Scaffold
      body: new TabBarView(
        // Add tabs as widgets
        children: <Widget>[new FirstTab(), new SecondTab(), new ThirdTab()],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: new Material(
        // set the color of the bottom navigation bar
        color: Colors.blue,
        // set the tab bar as the child of bottom navigation bar
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              // set icon to the tab
              icon: new Icon(Icons.favorite),
            ),
            new Tab(
              icon: new Icon(Icons.adb),
            ),
            new Tab(
              icon: new Icon(Icons.airport_shuttle),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}
