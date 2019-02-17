import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final Map startingProduct;

   ProductManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager] createState');

    return _ProductManager();
  }
}

class _ProductManager extends State<ProductManager> {
  final List<Map<String, String>> _products = [];

  @override
  void initState() {
    print('[ProductManager] initState');

    if(widget.startingProduct != null){
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager] didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  void _addproduct(Map<String, String> product){
    setState(() {
      _products.add(product);
      print(_products);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager] build');

    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addproduct),
        ),
        Expanded(child: Products(_products))
      ],
    );
  }
}
