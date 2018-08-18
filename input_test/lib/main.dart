import 'package:flutter/material.dart';
import './login_page.dart';
import './home_page.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: {
        '/': (BuildContext context) => LoginPage(),
        '/homepage' : (BuildContext context) => HomePage()
      },
      //debugShowCheckedModeBanner: false,
      // theme: ThemeData(primarySwatch: Colors.lightBlue, fontFamily: 'Nunito')
    );
  }
}
