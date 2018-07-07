import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        title: "App Title",
        home: Scaffold(
          appBar: AppBar(
            title: Text('My Test App'),
          ),
          body: Column(
            children: <Widget>[
              Text('Widget 1'),
              Container(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text('Hello Flutter 01'),
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('Andy Smith'),
                      leading: Icon(Icons.account_circle),
                      subtitle: Text('This is cool'),
                    ),
                    ButtonTheme.bar(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: Text('click me')
                            ),
                          FlatButton(
                            child: Text('No Click Me')
                          )
  
                        ],
                    ),)
                  ],
                ),
              )
            ],
          )
        )
      );
    }
}
