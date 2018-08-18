import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
        tag: 'hero',
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 72.0,
              //child: Image.asset('assets/logo.png')
              child: Image.network(
                  "https://static.thenounproject.com/png/363633-200.png")),
        ));

    final lorem = Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit  '));

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.deepPurple, Colors.pink])),
      child: ListView(
        children: <Widget>[
          alucard,
          lorem,
        ],
      ),
    );
    return Scaffold(body: body);
  }
}
