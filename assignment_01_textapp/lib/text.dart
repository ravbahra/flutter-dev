import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget{

  String displayText;
  TextOutput(this.displayText);

  @override
  Widget build(BuildContext context) {
      // TODO: implement build
      return Text(displayText);
  }
}