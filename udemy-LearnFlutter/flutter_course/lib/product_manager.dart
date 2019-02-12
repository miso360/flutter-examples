import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'Sweets Tester'});

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager] createState');

    return _ProductManager();
  }
}

class _ProductManager extends State<ProductManager> {
  final List<String> _products = [];

  @override
  void initState() {
    print('[ProductManager] initState');

    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager] didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  void _addproduct(String product){
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
        Products(_products)
      ],
    );
  }
}
