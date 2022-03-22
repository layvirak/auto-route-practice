import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final int? productId;
  const ProductDetail({Key? key, @PathParam('productId') this.productId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {},
      ),
      appBar: AppBar(
        title: const Text('Product Detail'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.card_travel),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text('Product ID : $productId'),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.router.pushNamed('product-info');
                    },
                    child: const Text('Product Information'),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.router.pushNamed('product-review');
                    },
                    child: const Text('Product Review'),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(child: AutoRouter())
        ],
      ),
    );
  }
}
