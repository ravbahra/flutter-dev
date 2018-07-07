import 'package:flutter/material.dart';
import 'homepage.dart';


// just following the tutorial from here
// https://www.youtube.com/watch?v=Ss1HkZ3LnRY

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        title: "calculator app",
        theme: new ThemeData(
          primarySwatch: Colors.red
        ),
        home: HomePage()
      );
    }
}