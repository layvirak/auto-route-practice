import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

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
        title: const Text('Order Page'),
      ),
    );
  }
}
