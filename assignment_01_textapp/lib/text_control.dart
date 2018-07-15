import 'package:flutter/material.dart';
import './text.dart';


class _TextControlState extends State<TextControl>{


  String displayText;
  @override
    void initState() {
      // TODO: implement initState

      displayText = "Initial State";
      super.initState();
    }

  _changeText(){
    setState(() {
          displayText="noodle";
        });
  }
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Column(
        children: <Widget>[
          RaisedButton(child: Text("Click me"),onPressed: _changeText,),
          TextOutput(displayText)
        ],
      );
    }
}


class TextControl extends StatefulWidget{


  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _TextControlState();
    }
}