import 'package:flutter/material.dart';
import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct}) {
    print('[Products Widget] Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push<bool>(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductPage(
                          products[index]['title'], products[index]['image']),
                    )
                ).then((bool value) {
                  if(value) {
                    deleteProduct(index);
                  }
                }),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductLists() {
    Widget productCard;

    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCard = Container();
    }

    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build');

    return _buildProductLists();
  }
}
