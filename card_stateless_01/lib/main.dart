import 'package:flutter/material.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        home: Scaffold( // this is used to create the page
          appBar: AppBar(
            title: Text("My App"),
            backgroundColor: Colors.redAccent,
          ),
          body: Card(
            child: Column(
              children: <Widget>[
                Image.asset('assets/food.jpg'),
                Text('food paradise')
              ],
            ),
          ),
        )
      );
    }
}

// you also have
// Image.network
// Image.file
// Image.file