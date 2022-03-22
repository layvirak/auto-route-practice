import 'package:auto_route/auto_route.dart';
import 'package:auto_route_practice/route.gr.dart';
import 'package:flutter/material.dart';

class ButtomBarPage extends StatelessWidget {
  const ButtomBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        Home(),
        Order(),
        Profile(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
