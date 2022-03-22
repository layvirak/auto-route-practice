import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final int? productId;
  const ProductDetail({Key? key, @PathParam('productId') this.productId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Detail'),
      ),
      body: Column(
        children: [
          Text('${productId ?? 'null'}'),
        ],
      ),
    );
  }
}
