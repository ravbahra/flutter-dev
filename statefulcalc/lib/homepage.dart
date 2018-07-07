import 'package:flutter/material.dart';

class HomePageState extends State<HomePage>{

  var num1,num2,sum = 0;

  // controllers for the text fields

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void _doAddition(){
    setState(() {
          num1 = int.parse(t1.text);
          num2 = int.parse(t2.text);
          sum = num1 + num2;
    });
  }

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Number 1",
                ),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Number 2",
                ),
                controller: t2,
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    color: Colors.greenAccent,
                    child: Text('+'),
                    onPressed: _doAddition,
                  ),
                  RaisedButton(
                    child: Text('-'),
                    onPressed: (){},
                  ),
                ],
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Text('*'),
                    onPressed: (){},
                  ),
                  RaisedButton(
                    child: Text('/'),
                    onPressed: (){},
                  ),
                ],
              ),
              Text('output : $sum',style: TextStyle(
                fontSize: 20.0,
                color: Colors.cyan,
                fontWeight: FontWeight.bold
              ),)
            ],
          )
        )
      );
    }
}

class HomePage extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return HomePageState();
    }
  
}


// remember that your stateful widget has
// createState - which returns another class which holds your State


// AppState class
// - returns builder


// if you need a text field to report it's state, you'll
// create a textFieldController and bind it to the