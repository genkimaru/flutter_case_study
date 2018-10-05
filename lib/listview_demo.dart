import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Material App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => new _SampleAppPageState();
}

class _SampleAppPageState extends State {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("App Bar"),
      ),
      body: new ListView(children: _getListData()),
    );
  }

  _getListData() {
    List widgets = <Widget>[];
    for (int i = 0; i < 100; i++) {
      widgets.add(new Padding(
          padding: new EdgeInsets.all(10.0),
          child: new Text("Row $i" ,
                            style: new TextStyle( fontFamily: 'Arial, Helvetica, sans-serif' ,
                                                  color : Colors.blue,
                                                  fontSize : 20.0),

      )));
    }
    return widgets;
  }
}

void main() {
  runApp(new MyListView());
}
