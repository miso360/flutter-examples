import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var list;
  var random;

  var refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();
    random = Random();
    refreshList();
  }

  Future<Null> refreshList() async {
    refreshKey.currentState?.show(atTop: false);
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      list = List.generate(random.nextInt(10), (i) => "Item $i");
    });

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Full to refresh"),),
      body: RefreshIndicator(
        key: refreshKey,
        child: ListView.builder(
            itemCount: list?.length,
            itemBuilder: (context, i) => ListTile(
              title: Text(list[i]),
            ),
        ),
        onRefresh: refreshList,
       ),
    );
  }
}
