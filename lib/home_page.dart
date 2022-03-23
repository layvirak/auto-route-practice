import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
        title: const Text('Home Screen'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed('1');
              },
              child: const Text('Product 1'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed('2');
              },
              child: const Text('Product 2'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed('3');
              },
              child: const Text('Product 3'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed('4');
              },
              child: const Text('Product 4'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed('5');
              },
              child: const Text('Product 5'),
            ),
          ),
        ],
      ),
    );
  }
}
