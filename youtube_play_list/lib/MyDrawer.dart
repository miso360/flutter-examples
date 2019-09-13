import 'package:flutter/material.dart';

import 'Playlist.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(20.0),
            ),
            new ListTile(
              leading: new Icon(Icons.home),
              title: new Text(
                "HOME",
                style: new TextStyle(fontSize: 18),
              ),
            ),
            new Divider(),
            new ListMenu(
              title: "FLUTTER",
              url: "YOUR URL",
            ),
            new ListMenu(
              title: "CODEIGNITER",
              url: "YOUR URL",
            ),
          ],
        ),
      ),
    );
  }
}

class ListMenu extends StatelessWidget {
  ListMenu({this.title, this.url});

  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: new Icon(Icons.video_library),
      title: new Text(
        title,
        style: new TextStyle(fontSize: 18),
      ),
      onTap: () => Navigator.of(context).push(
        new MaterialPageRoute(
          builder: (BuildContext context) => new Playlist(
            url: url,
            title: title,
          ),
        ),
      ),
    );
  }
}
