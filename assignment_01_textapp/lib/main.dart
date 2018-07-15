/**
 * requirements
 * 
 * - app bar
 * - button to change text
 * - 3 widgets/programs
 * - app, textcontrol and text
 * 
 */


import 'package:flutter/material.dart';
import './text_control.dart';

void main() => runApp(MyApp());

class _MyAppState extends State<MyApp>{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.cyanAccent
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("MyApp"),
          ),
          body: TextControl()
        )
      );
    }
}


class MyApp extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _MyAppState();
    }
}