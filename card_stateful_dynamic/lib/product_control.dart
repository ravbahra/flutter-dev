/**
 * Moved the button here
 */

import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget{

  // final just means you cant CHANGE the value, you can point
  // to a final list and still add, as it's just a reference to a list
  // to ensure you never change the value, then use const
  // final List<String> _products = const [];

  final Function addProduct;
  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
      // TODO: implement build
      return RaisedButton(
          child: Text("Click me"),
          onPressed: (){
            addProduct('Noodles');
          }
        );
    }
}