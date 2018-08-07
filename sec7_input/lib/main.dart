import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _MyAppState();
    }
}
class _MyAppState extends State<MyApp>{

  String mytitle = "";
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("app bar"),),
        body: Column(
          children: <Widget>[
            Text("main app"),
            TextField(
              // automatically has the blinker and kayboard up when you load the page
              //autofocus: true,
              onChanged: (String val){
                setState((){
                  mytitle=val;
                });
              },
              // on submitted is when we're done and submitting data
            ),
            Text(mytitle)
          ]
        ),
      ),
    );
  }
}
