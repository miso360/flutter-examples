import 'package:flutter/material.dart';
import 'package:youtube_play_list/MyDrawer.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'YouTube play list',
      home: new Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new MyDrawer(),
      backgroundColor: Colors.transparent,
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage("img/bg.jpg"), fit: BoxFit.cover),
        ),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new SizedBox(
                width: 150.0,
                height: 150.0,
                child: new Image.asset("img/ic.png"),
              ),
              new Text(
                "YouTube play list",
                style: new TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
