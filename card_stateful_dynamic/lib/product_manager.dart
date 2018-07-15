import 'package:flutter/material.dart';
import './products.dart';

class _ProdutcsManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
    void initState() {

      // Can call widget.startingProduct to access data passed to
      // the widget
      _products.add(widget.startingProduct);
      // TODO: implement initState
      super.initState();
    }


  @override
    void didUpdateWidget(ProductManager oldWidget) {
      // TODO: implement didUpdateWidget
      super.didUpdateWidget(oldWidget);
    }
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

  // needs to be final as this class is immutable
  // even though this is stateful, but it's the state class that changes


  // also you need to pass this to the widget, you can do this without
  // passing to a constructor
  final String startingProduct;
  ProductManager(this.startingProduct);

  State<StatefulWidget> createState() {
    return _ProdutcsManagerState();
  }
}
