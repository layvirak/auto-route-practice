import 'package:auto_route/auto_route.dart';
import 'package:auto_route_practice/home_page.dart';
import 'package:auto_route_practice/order_page.dart';
import 'package:auto_route_practice/product_detail.dart';
import 'package:auto_route_practice/product_infromation.dart';
import 'package:auto_route_practice/product_review.dart';
import 'package:auto_route_practice/profile_page.dart';
import 'buttom_bar_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: ButtomBarPage,
      path: '/',
      initial: true,
      children: [
        AutoRoute(
          path: 'home',
          name: 'Home',
          page: EmptyRouterPage,
          initial: true,
          children: <AutoRoute>[
            AutoRoute(
              page: HomePage,
              path: '',
            ),
            AutoRoute(
              path: ':productId',
              name: 'ProductDetail',
              page: ProductDetail,
            ),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          page: OrderPage,
          path: 'order',
          name: 'Order',
        ),
        AutoRoute(
          page: ProfilePage,
          path: 'profile',
          name: 'Profile',
        ),
      ],
    ),
  ],
)
class $AppRouter {}
