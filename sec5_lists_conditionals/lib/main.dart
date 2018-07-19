import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyNoodle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text("This is great")
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Click me"),
            ),
            // list view won't work if there's another static widget on the screen as we've done
            // with Raised button
            // you need to either
            // 1. Wrap the ListView inside a container and define a height property
            // 2. or if  you want ot use the remaining space, don't wrap in container, use Expanded() instead


        /**
         *    Container(
              height: 300.0,
              child: ListView(
                children: <Widget>[
                  MyNoodle(),
                  MyNoodle(),
                  MyNoodle(),
                ],
              ),
            )
         */
      
           Expanded(
            child: ListView(
              children: <Widget>[
                MyNoodle(),
                MyNoodle(),
                MyNoodle(),
                MyNoodle()
              ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
