import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Column(
        children: <Widget>[
          ButtonBar(children: <Widget>[
            FlatButton(child: Text("Details"),)
          ],)
          Center(child: Text("Hello and welcome to the home page"),)
        ],
      );
    }
}