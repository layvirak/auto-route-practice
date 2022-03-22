import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.router.pushNamed('setting_page');
          },
          child: const Text('Setting Page'),
        ),
      ),
    );
  }
}
