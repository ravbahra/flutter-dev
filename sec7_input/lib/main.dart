import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String mytitle = "d";

  String descriptionValue = "";
  double priceValue;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("app bar"),
          ),
          body: Container(
            margin: EdgeInsets.all(10.0),
            child: ListView(children: <Widget>[
              Text("main app"),
              TextField(
                // automatically has the blinker and kayboard up when you load the page
                //autofocus: true,
                decoration: InputDecoration(
                    labelText: 'Please Enter some text',
                    prefixIcon: Icon(Icons.accessible)),
                maxLines: 4,
                onChanged: (String val) {
                  setState(() {
                    mytitle = val;
                  });
                },
                // on submitted is when we're done and submitting data
              ),
              Text("Please enter description"),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (String value) {
                  setState(() {
                    descriptionValue = value;
                  });
                },
              ),
              Text(mytitle),
              Text(descriptionValue),
              TextField(
                maxLines: 10,
                decoration: InputDecoration(
                  labelText: "enter your desktoption",
                  
                ),
              ),

              SizedBox(height: 10.0),
              RaisedButton(child: Text("save"),onPressed: (){

              },color: Theme.of(context).accentColor, textColor: Colors.white,)
            ]),
          )),
    );
  }
}
