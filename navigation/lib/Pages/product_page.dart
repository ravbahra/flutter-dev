import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String titlePage;
  ProductPage(this.titlePage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title:Text("Noodles and Pots")),
        body: Center(
          
          child: Container(

            child: Column(
            children: <Widget>[Text(titlePage)],
          ),
          ),
        )
    );
  }
}
