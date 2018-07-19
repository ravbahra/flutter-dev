import 'package:flutter/material.dart';
import './products.dart';

import './product_control.dart';

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

  void _addProducts(String product) {
    /*
     will recieve the argument from product control which is a button
     here we will set state

     */
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        // this widget calls a function in current class, you can pass a reference to it
        // so where we can set the state in that widget instead
        child: ProductControl(_addProducts)
        
        ),
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
