import 'package:flutter/material.dart';
class Products extends StatelessWidget{

  // final keyword, value doesn't change after initialised after constructor
  // new additions to products end up assigning a new list of products
  final List<String> products;

  /**
   * Constructor, you can also assign the argument to a class variable
   * within the declaration
   */
  Products(this.products);

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Column(
                children: products.map((element) => 
                Card(
                  child:Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpg'),
                      Text(element)
                    ],
                  )
                  )
                ).toList()
      );
    }
}

