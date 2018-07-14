import 'package:flutter/material.dart';
import './products.dart';

class _ProdutcsManagerState extends State<ProductManager> {
  List<String> _products = ['food tester'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          child: Text("Click me"),
          onPressed: () {
            setState(() {
              _products.add("new element");
            });
          },
        )),
      Products(_products)
    ]);
  }
}

class ProductManager extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _ProdutcsManagerState();
  }
}
