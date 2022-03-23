import 'package:auto_route/auto_route.dart';
import 'package:auto_route_practice/home_page.dart';
import 'package:auto_route_practice/order_page.dart';
import 'package:auto_route_practice/product_detail.dart';
import 'package:auto_route_practice/product_infromation.dart';
import 'package:auto_route_practice/product_review.dart';
import 'package:auto_route_practice/profile_page.dart';
import 'package:auto_route_practice/setting_page.dart';
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
              children: <AutoRoute>[
                CustomRoute(
                  page: ProductInformation,
                  path: 'product-info',
                  name: 'ProductInformation',
                  initial: true,
                  transitionsBuilder: TransitionsBuilders.noTransition,
                ),
                CustomRoute(
                  page: ProductReview,
                  path: 'product-review',
                  name: 'ProductReview',
                  transitionsBuilder: TransitionsBuilders.noTransition,
                ),
              ],
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
          path: 'profile',
          name: 'Profile',
          page: EmptyRouterPage,
          children: <AutoRoute>[
            AutoRoute(
              page: ProfilePage,
              path: '',
            ),
            AutoRoute(
              page: SettingPage,
              path: 'setting-page',
              name: 'SettingPage',
            ),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
