import 'package:flutter/material.dart';
import './Pages/second_page.dart';
import './Pages/product_page.dart';

void main() => runApp(MyApp());


class MyHomePage extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Main Page 2"),
            RaisedButton(
              child: Text("Click me to navigate"),
              onPressed: () => Navigator.pushNamed(context, '/admin'),
            ),
            IconButton(
              icon: Icon(Icons.add_comment),
              onPressed: () => Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext builder) => ProductPage("Noodles and Poodles")
              )),
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () => Navigator.pushNamed(context, '/noodles/doodle/woodles'),
            )
          ]
        ),
      );
    }
}

class MyApp extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("This is my main page"),),
          body: MyHomePage(),
        ),
        routes: {
          // you pass the builder that creates the route
          '/admin' : (BuildContext context) => TestPage(),

        },
        onGenerateRoute: (RouteSettings settings) {
          // holds the route name
          //final List<String> pathElements = settings.name;
          final List<String> pathElements = settings.name.split('/');

          if(pathElements[0]!=''){
            return null;
          }
          switch(pathElements[1]){
            case "noodles":
              return MaterialPageRoute(
                // you can pass stuff from here
                builder: (BuildContext context) => ProductPage("this is correct")
              );

            
          }
          return null;

        },
      );
    }
}