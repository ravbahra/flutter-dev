import 'package:flutter/material.dart';

void main() => runApp(new MyApp());


class Method1 extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
      return Card(
        child: Column(
           
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Image.asset('assets/food.jpg'),
            ),
            RaisedButton(child: Text("Click me"), onPressed: (){},)
          ]
        ),
        );
    }
}


class MyApp extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title:Text("Noodle")),
          body : ListView(
              children: <Widget>[
                Method1()
              ],
            )
        ),
      );
    }
}