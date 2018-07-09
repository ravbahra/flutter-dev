import 'package:flutter/material.dart';

// tutorial from the flutter website

void main() => runApp(MyApp());

class _MyAppState extends State<MyApp>{

  bool _isFav = false;
  int _favCount = 0;

  void _favPressed(){
    setState(() {
          _isFav ? _isFav=false : _isFav=true;
          _favCount+=1;
        });
  }

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        title: "My App",
        home: Scaffold(
          body: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 20.0)),
              Container(
              padding: EdgeInsets.all(20.0),
              child: IconButton(
                icon: (_isFav ? Icon(Icons.star) : Icon(Icons.star_border)),
                onPressed: _favPressed,
              ),
              ),
              SizedBox(
                width: 50.0,
                child: Container(
                  child: Text('$_favCount')
                ),
              )
            ],
          ),
        ),
      );
    }
}

class MyApp extends StatefulWidget{
  @override
    _MyAppState createState() {
      // TODO: implement createState
      return _MyAppState();
    }

    // or _MyAppState createState() => _MyAppState()
}