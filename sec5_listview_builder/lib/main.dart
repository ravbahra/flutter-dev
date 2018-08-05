import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/**
 * Using ListView.builder, it;s much more performant as it removes items when  you don't see them
 */

class MyList extends StatelessWidget{

  final List<String> _myList = ["item 1", "item 2", "item 3"];
  
  // * Context always has info about theme etc
//   * index is the position in that list
   
  Widget _buildItem(BuildContext context, int index){
    return Container(
      child: Text(_myList[index]),
    );

  }

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return ListView.builder(
        // the function to build the item
        itemBuilder: _buildItem,
        // how many items that need to be built
        itemCount: 3
      );
    }
}

class MyApp extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Noodle"),
          ),

          // putting this in a Column will yeild an error, if you need to put
          // try Expanded
          body: MyList()
        ),
      );
    }
}