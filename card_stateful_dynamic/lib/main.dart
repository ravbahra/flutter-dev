import 'package:flutter/material.dart';
import './product_manager.dart';

void main() => runApp(MyApp());


class _MyAppState extends State<MyApp>{

  

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("My New App"),
          ),
          body: Column(
            children: <Widget>[
              ProductManager('noodle')
            ],
          ),
        ),
      );
    }
}


class MyApp extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}



/**
 * Card (child: Column())
 */

/*
.map will return an iterable<type> rather than the list of Widgets
best way to do this is to call it in the children part of a column,

the map function also needs to be converted .toList()

eg .map().toList()


// remember, you still return your widget class that extends stateful, but your
// actual


*/

